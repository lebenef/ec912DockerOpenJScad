FROM nginx:alpine

RUN git clone https://github.com/jscad/OpenJSCAD.org

RUN cd OpenJSCAD.org

RUN cd packages

COPY web /usr/share/nginx/html/

