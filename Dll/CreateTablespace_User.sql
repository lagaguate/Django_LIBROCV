

CREATE TABLESPACE LIBROCV02 
    DATAFILE 
        '/opt/oracle/oradata/XE/XEPDB1/LIBROCV02.DBF' SIZE 104857600 AUTOEXTEND ON NEXT 52428800
ONLINE 
    SEGMENT SPACE MANAGEMENT AUTO;        


--DROP USER LibroCV CASCADE;

CREATE USER librocv02 IDENTIFIED BY librocv
       DEFAULT TABLESPACE LIBROCV02  
       TEMPORARY TABLESPACE temp
       QUOTA UNLIMITED ON LIBROCV02;


grant connect, resource to LIBROCV02;
grant unlimited tablespace to LIBROCV02;
grant create synonym, create public synonym,create view to LIBROCV02;

