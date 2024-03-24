use mydb;

show variables like "%secure%";

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\source.csv'
INTO TABLE source
CHARACTER SET utf8
FIELDS TERMINATED BY ',' -- Bu kısma dosyanızdaki ayraç karakterini ekleyin
LINES TERMINATED BY '\n';

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\hha.csv'
INTO TABLE hha
CHARACTER SET utf8
FIELDS TERMINATED BY ',' -- Bu kısma dosyanızdaki ayraç karakterini ekleyin
LINES TERMINATED BY '\n';

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\properties.csv'
INTO TABLE properties
CHARACTER SET utf8
FIELDS TERMINATED BY ',' -- Bu kısma dosyanızdaki ayraç karakterini ekleyin
LINES TERMINATED BY '\n';

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\numerics.csv'
INTO TABLE numerics
CHARACTER SET utf8
FIELDS TERMINATED BY ',' -- Bu kısma dosyanızdaki ayraç karakterini ekleyin
LINES TERMINATED BY '\n';

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\color.csv'
INTO TABLE color
CHARACTER SET utf8
FIELDS TERMINATED BY ',' -- Bu kısma dosyanızdaki ayraç karakterini ekleyin
LINES TERMINATED BY '\n';

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\items.csv'
INTO TABLE items
CHARACTER SET utf8
FIELDS TERMINATED BY ';' -- Bu kısma dosyanızdaki ayraç karakterini ekleyin
LINES TERMINATED BY '\n';

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\hha2item.csv'
INTO TABLE hha2item
CHARACTER SET utf8
FIELDS TERMINATED BY ',' -- Bu kısma dosyanızdaki ayraç karakterini ekleyin
LINES TERMINATED BY '\n';

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\properties2item.csv'
INTO TABLE properties2item
CHARACTER SET utf8
FIELDS TERMINATED BY ',' -- Bu kısma dosyanızdaki ayraç karakterini ekleyin
LINES TERMINATED BY '\n';

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\numerics2item.csv'
INTO TABLE numerics2item
CHARACTER SET utf8
FIELDS TERMINATED BY ',' -- Bu kısma dosyanızdaki ayraç karakterini ekleyin
LINES TERMINATED BY '\n';

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\color2item.csv'
INTO TABLE color2item
CHARACTER SET utf8
FIELDS TERMINATED BY ',' -- Bu kısma dosyanızdaki ayraç karakterini ekleyin
LINES TERMINATED BY '\n';

update items
set catalog = null
where catalog = 100;

update numerics2item
set numerics_value = null
where numerics_value = 313131;