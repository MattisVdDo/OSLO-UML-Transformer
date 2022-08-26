FROM cimg/node:current-browsers 

WORKDIR /app

COPY . .

RUN cd packages/oslo-runner && sudo npm install @oslo-flanders/runner

RUN cd packages/oslo-core && sudo npm install @oslo-flanders/core

RUN sudo npm install
RUN sudo npm run build


CMD [ "bash" ]
