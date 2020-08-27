FROM kong:2.1.0-alpine

USER root

RUN apk add git

RUN git clone https://github.com/smtydn/kong-plugin-highpri-response-transformer.git

RUN cd kong-plugin-highpri-response-transformer \
    && luarocks make \
    && luarocks pack kong-plugin-highpri-response-transformer 0.1.0-1 \
    && luarocks install kong-plugin-highpri-response-transformer-0.1.0-1.all.rock

RUN rm -rf kong-plugin-highpri-response-transformer

ENV KONG_PLUGINS bundled,highpri-response-transformer
