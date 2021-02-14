-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
SHOW WARNINGS;
-- -----------------------------------------------------
-- Schema movies
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema movies
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `movies` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
SHOW WARNINGS;
USE `movies` ;

-- -----------------------------------------------------
-- Table `movies`.`movies`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `movies`.`movies` (
  `movie_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `movie_name` VARCHAR(50) NOT NULL,
  `release_year` INT UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`movie_id`),
  INDEX `movies_pk` (`movie_id` ASC) VISIBLE)
ENGINE = InnoDB
AUTO_INCREMENT = 8
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `movies`.`persons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `movies`.`persons` (
  `person_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `person_name` VARCHAR(80) NOT NULL,
  PRIMARY KEY (`person_id`),
  INDEX `persons_pk` (`person_id` ASC) VISIBLE)
ENGINE = InnoDB
AUTO_INCREMENT = 8
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `movies`.`movie_ratings`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `movies`.`movie_ratings` (
  `movie_id` INT UNSIGNED NOT NULL,
  `person_id` INT UNSIGNED NOT NULL,
  `rating_value` INT UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`movie_id`, `person_id`),
  INDEX `movie_ratings_pk` (`movie_id` ASC, `person_id` ASC) INVISIBLE,
  INDEX `movie_ratings_fk2_idx` (`person_id` ASC) VISIBLE,
  CONSTRAINT `movie_ratings_fk1`
    FOREIGN KEY (`movie_id`)
    REFERENCES `movies`.`movies` (`movie_id`),
  CONSTRAINT `movie_ratings_fk2`
    FOREIGN KEY (`person_id`)
    REFERENCES `movies`.`persons` (`person_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `movies`.`recent_movies_ratings`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `movies`.`recent_movies_ratings` (
  `Movie` TEXT NULL DEFAULT NULL,
  `MovieYear` INT NULL DEFAULT NULL,
  `Person` TEXT NULL DEFAULT NULL,
  `Rating` INT NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

SHOW WARNINGS;
USE `movies` ;

-- -----------------------------------------------------
-- Placeholder table for view `movies`.`movie_ratings_view`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `movies`.`movie_ratings_view` (`movie_id` INT, `movie_name` INT, `release_year` INT, `person_name` INT, `rating_value` INT);
SHOW WARNINGS;

-- -----------------------------------------------------
-- View `movies`.`movie_ratings_view`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `movies`.`movie_ratings_view`;
SHOW WARNINGS;
USE `movies`;
CREATE  OR REPLACE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `movies`.`movie_ratings_view` AS select `m`.`movie_id` AS `movie_id`,`m`.`movie_name` AS `movie_name`,`m`.`release_year` AS `release_year`,`p`.`person_name` AS `person_name`,`r`.`rating_value` AS `rating_value` from ((`movies`.`movies` `m` left join `movies`.`movie_ratings` `r` on((`m`.`movie_id` = `r`.`movie_id`))) left join `movies`.`persons` `p` on((`r`.`person_id` = `p`.`person_id`)));
SHOW WARNINGS;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
