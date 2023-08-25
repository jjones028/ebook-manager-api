package io.spektacle.plugins

import com.zaxxer.hikari.HikariConfig
import com.zaxxer.hikari.HikariDataSource
import io.ktor.server.application.*
import org.flywaydb.core.Flyway
import org.jetbrains.exposed.sql.Database

fun Application.configureDatabases() {
    val appConfig = environment.config
    fun hikari(): HikariDataSource {
        val config = HikariConfig().apply {
            jdbcUrl = appConfig.property("db.url").getString()
            username = appConfig.property("db.username").getString()
            password = appConfig.property("db.password").getString()
            maximumPoolSize = appConfig.property("db.maxPoolSize").getString().toInt()
            validate()
        }
        return HikariDataSource(config)
    }
    val dataSource = hikari()
    val database = Database.connect(dataSource)

    Flyway.configure().dataSource(dataSource).baselineOnMigrate(true).load().migrate()
}
