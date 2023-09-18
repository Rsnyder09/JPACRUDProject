-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema archerydb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `archerydb` ;

-- -----------------------------------------------------
-- Schema archerydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `archerydb` DEFAULT CHARACTER SET utf8 ;
USE `archerydb` ;

-- -----------------------------------------------------
-- Table `archery_practice`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `archery_practice` ;

CREATE TABLE IF NOT EXISTS `archery_practice` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `arrows_shot` INT NOT NULL,
  `duration` INT NULL,
  `coffee` INT NULL,
  `bullseye` INT NULL,
  `location` VARCHAR(45) NOT NULL,
  `temperature` INT NULL,
  `date` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS archeryuser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'archeryuser'@'localhost' IDENTIFIED BY 'archeryuser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'archeryuser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `archery_practice`
-- -----------------------------------------------------
START TRANSACTION;
USE `archerydb`;
INSERT INTO `archery_practice` (`id`, `arrows_shot`, `duration`, `coffee`, `bullseye`, `location`, `temperature`, `date`) VALUES (1, 30, 60, 0, 8, 'Bear Creek Archery', 73, '05-03-2023');
INSERT INTO `archery_practice` (`id`, `arrows_shot`, `duration`, `coffee`, `bullseye`, `location`, `temperature`, `date`) VALUES (2, 30, 30, 1, 7, 'Aurora Reservoir', 51, '09-04-2023');
INSERT INTO `archery_practice` (`id`, `arrows_shot`, `duration`, `coffee`, `bullseye`, `location`, `temperature`, `date`) VALUES (3, 50, 65, 1, 5, 'Aurora Reservoir', 53, '09-05-2023');
INSERT INTO `archery_practice` (`id`, `arrows_shot`, `duration`, `coffee`, `bullseye`, `location`, `temperature`, `date`) VALUES (4, 48, 60, 1, 6, 'Aurora Reservoir', 56, '09-06-2023');
INSERT INTO `archery_practice` (`id`, `arrows_shot`, `duration`, `coffee`, `bullseye`, `location`, `temperature`, `date`) VALUES (5, 38, 50, 1, 5, 'Aurora Reservoir', 55, '09-07-2023');
INSERT INTO `archery_practice` (`id`, `arrows_shot`, `duration`, `coffee`, `bullseye`, `location`, `temperature`, `date`) VALUES (6, 30, 45, 1, 2, 'Aurora Reservoir', 56, '09-08-2023');
INSERT INTO `archery_practice` (`id`, `arrows_shot`, `duration`, `coffee`, `bullseye`, `location`, `temperature`, `date`) VALUES (7, 42, 61, 1, 5, 'Aurora Reservoir', 53, '09-11-2023');
INSERT INTO `archery_practice` (`id`, `arrows_shot`, `duration`, `coffee`, `bullseye`, `location`, `temperature`, `date`) VALUES (8, 48, 70, 1, 7, 'Aurora Reservoir', 54, '09-12-2023');
INSERT INTO `archery_practice` (`id`, `arrows_shot`, `duration`, `coffee`, `bullseye`, `location`, `temperature`, `date`) VALUES (9, 41, 65, 1, 5, 'Aurora Reservoir', 57, '09-13-2023');
INSERT INTO `archery_practice` (`id`, `arrows_shot`, `duration`, `coffee`, `bullseye`, `location`, `temperature`, `date`) VALUES (10, 50, 60, 1, 1, 'Aurora Reservoir', 52, '09-14-2023');
INSERT INTO `archery_practice` (`id`, `arrows_shot`, `duration`, `coffee`, `bullseye`, `location`, `temperature`, `date`) VALUES (11, 53, 62, 1, 1, 'Aurora Reservoir', 55, '09-15-2023');
INSERT INTO `archery_practice` (`id`, `arrows_shot`, `duration`, `coffee`, `bullseye`, `location`, `temperature`, `date`) VALUES (12, 55, 52, 1, 3, 'Aurora Reservoir', 41, '09-16-2023');

COMMIT;

