wget https://ftp.postgresql.org/pub/source/v9.4.3/postgresql-9.4.3.tar.gz
wget http://initd.org/psycopg/tarballs/PSYCOPG-2-6/psycopg2-2.6.1.tar.gz
tar -zxf postgresql-9.4.3.tar.gz
tar -zxf psycopg2-2.6.1.tar.gz
cd ./postgresql-9.4.3
./configure --prefix $PWD --without-readline --without-zlib
make
make install
cd ../psycopg2-2.6.1
sed -i.bak 's/\#static_libpq=1/static_libpq=1/' setup.cfg
sed -i.bak 's/\#pg_config=/pg_config=..\/postgresql-9.4.3\/bin\/pg_config/' setup.cfg
python3.4 setup.py build
cp -R /psycopg2-2.6.1/build/lib.linux-x86_64-3.4/psycopg2/ /output

