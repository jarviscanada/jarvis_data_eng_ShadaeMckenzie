CREATE TABLE PUBLIC.host_info (
id SERIAL NOT NULL,
host_name VARCHAR NOT NULL,
cpu_number INT NOT NULL,
cpu_architecture VARCHAR NOT NULL,
cpu_model VARCHAR NOT NULL,
cpu_mhz FLOAT NOT NULL,
L2_cache INT NOT NULL,
total_mem INT NOT NULL,
"timestamp" DATETIME NOT NULL);

INSERT INTO PUBLIC.host_info( id, host_name, cpu_number, cpu_architecture,cpu_model,cpu_mhz,L2_cache,
total_mem,"timestamp")
VALUES(1,'jrvs-remote-desktop-centos7.us-east1-b.c.acquired-jet-350713.internal',1,'x86_64','Intel(R) Xeon(R) CPU @ 2.30GHz',2299.998,256,3619052, CURRENT_TIMESTAMP);


CREATE TABLE PUBLIC.host_usage(
"timestamp" DATETIME NOT NULL,
host_id SERIAL NOT NULL,
memory_free INT NOT NULL,
cpu_idle INT NOT NULL,
cpu_kernel INT NOT NULL,
disk_io  INT NOT NULL,
disk_available INT NOT NULL);

INSERT INTO PUBLIC.host_usage("timestamp",host_id,memory_free,cpu_idle,cpu_kernel,disk_io,disk_available)
VALUES(CURRENT_TIMESTAMP,1,256,95,0,0,31220);










  
