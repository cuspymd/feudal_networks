FROM cuspymd/universe

RUN pip install opencv-python tensorflow

WORKDIR /feudal_networks/

COPY . ./

RUN py3clean .

ENTRYPOINT ["./run.sh"]


