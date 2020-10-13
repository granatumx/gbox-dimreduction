FROM granatumx/gbox-py-sdk:1.0.0

RUN pip install cmake
RUN pip install git+https://github.com/DmitryUlyanov/Multicore-TSNE.git@682531fe21db7e10c1f7b0a783b7be86128273bc

COPY . .

RUN ./GBOXtranslateVERinYAMLS.sh
RUN tar zcvf /gbox.tgz package.yaml yamls/*.yaml
