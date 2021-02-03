-- MySQL Script generated by MySQL Workbench
-- Wed Feb  3 12:40:33 2021
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering
SET
  @OLD_UNIQUE_CHECKS = @ @UNIQUE_CHECKS,
  UNIQUE_CHECKS = 0;
SET
  @OLD_FOREIGN_KEY_CHECKS = @ @FOREIGN_KEY_CHECKS,
  FOREIGN_KEY_CHECKS = 0;
SET
  @OLD_SQL_MODE = @ @SQL_MODE,
  SQL_MODE = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
-- -----------------------------------------------------
  -- Schema ulysseDb
  -- -----------------------------------------------------
  -- -----------------------------------------------------
  -- Schema ulysseDb
  -- -----------------------------------------------------
  CREATE SCHEMA IF NOT EXISTS `ulysseDb` DEFAULT CHARACTER SET utf8;
USE `ulysseDb`;
-- -----------------------------------------------------
  -- Table `ulysseDb`.`gladiators`
  -- -----------------------------------------------------
  CREATE TABLE IF NOT EXISTS `ulysseDb`.`gladiators` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(45) NULL,
    `picture` VARCHAR(45) NULL,
    `victories` INT NOT NULL,
    `force` VARCHAR(45) NOT NULL,
    `dex` VARCHAR(45) NOT NULL,
    `intel` VARCHAR(45) NOT NULL,
    `arme` VARCHAR(45) NOT NULL,
    `popularity` VARCHAR(45) NOT NULL,
    PRIMARY KEY (`id`)
  ) ENGINE = InnoDB;
-- -----------------------------------------------------
  -- Table `ulysseDb`.`hotels`
  -- -----------------------------------------------------
  CREATE TABLE IF NOT EXISTS `ulysseDb`.`hotels` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(45) NOT NULL,
    `capacity` INT NOT NULL,
    `surface` VARCHAR(45) NOT NULL,
    `balcon` VARCHAR(45) NOT NULL,
    `pisicine` VARCHAR(45) NOT NULL,
    `tarif` VARCHAR(45) NOT NULL,
    `stock` INT NOT NULL,
    PRIMARY KEY (`id`)
  ) ENGINE = InnoDB;
-- -----------------------------------------------------
  -- Table `ulysseDb`.`users`
  -- -----------------------------------------------------
  CREATE TABLE IF NOT EXISTS `ulysseDb`.`users` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `firstname` VARCHAR(45) NOT NULL,
    `lastname` VARCHAR(45) NOT NULL,
    `email` VARCHAR(45) NOT NULL,
    `gladiators_id` INT NOT NULL,
    `hotels_id` INT NOT NULL,
    PRIMARY KEY (`id`, `gladiators_id`, `hotels_id`),
    INDEX `fk_users_gladiators_idx` (`gladiators_id` ASC) VISIBLE,
    INDEX `fk_users_hotels1_idx` (`hotels_id` ASC) VISIBLE,
    CONSTRAINT `fk_users_gladiators` FOREIGN KEY (`gladiators_id`) REFERENCES `ulysseDb`.`gladiators` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT `fk_users_hotels1` FOREIGN KEY (`hotels_id`) REFERENCES `ulysseDb`.`hotels` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
  ) ENGINE = InnoDB;
SET
  SQL_MODE = @OLD_SQL_MODE;
SET
  FOREIGN_KEY_CHECKS = @OLD_FOREIGN_KEY_CHECKS;
SET
  UNIQUE_CHECKS = @OLD_UNIQUE_CHECKS;