FROM mysterysd/wzmlx:latest

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

COPY rs.txt .
RUN pip3 install --no-cache-dir -r rs.txt

COPY . .

CMD ["bash", "start.sh"]
