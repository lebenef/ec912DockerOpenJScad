FROM node:6

WORKDIR /usr/bin/app

RUN git clone https://github.com/jscad/OpenJSCAD.org

#RUN npm install -g @jscad/openjscad

#RUN ls

#RUN cd  /usr/bin/app/OpenJSCAD.org/packages/web

WORKDIR /usr/bin/app/OpenJSCAD.org/packages/web

RUN npm install

RUN mkdir examples

RUN cp -r  ../examples/* examples/

CMD npm run start-dev

