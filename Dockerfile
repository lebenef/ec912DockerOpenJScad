FROM node:6

# RUN apt install -y git

RUN cd /usr

RUN git clone https://github.com/jscad/OpenJSCAD.org

RUN cd OpenJSCAD.org

RUN cd packages

COPY web /usr/bin/app

COPY ../examples /usr/bin/examples
