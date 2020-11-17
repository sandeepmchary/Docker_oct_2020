- volumes are two types
    - Hosted Directory volume Mounting
    - Named volume Mounting
- here we discussing about Named Hosted volume
- with databases
------------------------------------------------
  version: '3'
services:
    db:
        image: mysql:latest
        restart: always
        container_name: myphpapp-db
        environment:
            MYSQL_ROOT_PASSWORD: somepass
            MYSQL_DATABASE: somedatabase
        volumes: 
            - ./data:/var/lib/mysql
    dbclient:
        image: mysql:latest
        depends_on: 
            - db
        command: mysql -uroot -psomepass -hdb
----------------------------------
- docker compose up -d
- docker compose run --rm dbclient
- with volumes and without volumes
- just put # in front of the volumes
- 