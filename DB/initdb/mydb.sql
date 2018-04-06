-- sql statment start when database start
use `myapp`;
CREATE TABLE user
(
    id int not null ,
    user_name VARCHAR(50) ,
    PRIMARY key(id)
) engine = innoDB;

