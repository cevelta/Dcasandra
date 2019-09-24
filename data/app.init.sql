-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `mydb` ;

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
SHOW WARNINGS;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Categoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Categoria` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `mydb`.`Producto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Producto` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NULL,
  `medida` INT NULL,
  `metal` VARCHAR(45) NULL,
  `Categoria_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_Producto_Categoria_idx` (`Categoria_id` ASC),
  CONSTRAINT `fk_Producto_Categoria`
    FOREIGN KEY (`Categoria_id`)
    REFERENCES `mydb`.`Categoria` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `mydb`.`Empresa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Empresa` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `telefono` INT NULL,
  `nombre` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  `logo` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `mydb`.`Politica`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Politica` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(45) NULL,
  `texto` VARCHAR(45) NULL,
  `Empresa_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_Politica_Empresa1_idx` (`Empresa_id` ASC),
  CONSTRAINT `fk_Politica_Empresa1`
    FOREIGN KEY (`Empresa_id`)
    REFERENCES `mydb`.`Empresa` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `mydb`.`Redes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Redes` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombre` INT NULL,
  `logo` VARCHAR(45) NULL,
  `Empresa_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_Redes_Empresa1_idx` (`Empresa_id` ASC),
  CONSTRAINT `fk_Redes_Empresa1`
    FOREIGN KEY (`Empresa_id`)
    REFERENCES `mydb`.`Empresa` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `mydb`.`Usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Usuario` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NULL,
  `contraseña` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SHOW WARNINGS;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `mydb`.`Categoria`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `mydb`.`Categoria` (`id`, `nombre`) VALUES (1, 'anillos');
INSERT INTO `mydb`.`Categoria` (`id`, `nombre`) VALUES (2, 'collares');
INSERT INTO `mydb`.`Categoria` (`id`, `nombre`) VALUES (3, 'reloj');
INSERT INTO `mydb`.`Categoria` (`id`, `nombre`) VALUES (4, 'pendientes');
INSERT INTO `mydb`.`Categoria` (`id`, `nombre`) VALUES (5, 'pulseras');

COMMIT;


-- -----------------------------------------------------
-- Data for table `mydb`.`Producto`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `mydb`.`Producto` (`id`, `nombre`, `medida`, `metal`, `Categoria_id`) VALUES (1, 'anillos', 12, 'oro', 1);

COMMIT;


-- -----------------------------------------------------
-- Data for table `mydb`.`Empresa`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `mydb`.`Empresa` (`id`, `telefono`, `nombre`, `email`, `logo`) VALUES (1, 93621121, 'dcasandra', 'dcasandra_joyeria@gmail.com', NULL);

COMMIT;

