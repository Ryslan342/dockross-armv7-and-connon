FROM dockcross/linux-armv7-lts
FROM conanio/gcc10-armv7

WORKDIR /work

COPY ./ ./

RUN ls

RUN /bin/bash -c "source ./arm7/build-image.sh"