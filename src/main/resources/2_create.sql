CREATE DATABASE `myDatabase` DEFAULT CHARACTER SET utf8;

GRANT SELECT,INSERT,UPDATE,DELETE
  ON `myDatabase`.*
  TO myDatabase@localhost
  IDENTIFIED BY 'user';

GRANT SELECT,INSERT,UPDATE,DELETE
  ON `myDatabase`.*
  TO myDatabase_user@'%'
  IDENTIFIED BY 'user';