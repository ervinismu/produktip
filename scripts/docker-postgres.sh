# Running postgres container as daemon
# Command : ./docker-postgres.sh

docker run -p 5433:5432 --name yourdb -e POSTGRES_PASSWORD=yourpassword -e POSTGRES_USER=youruser -d postgres
