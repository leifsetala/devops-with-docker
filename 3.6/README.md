# Frontend
## Before optimizations
IMAGE          CREATED          CREATED BY                                      SIZE      COMMENT
525c641d6583   8 minutes ago    /bin/sh -c #(nop)  ENTRYPOINT ["serve" "-s" …   0B        
7fa96bcfe825   8 minutes ago    /bin/sh -c #(nop)  USER appuser                 0B        
10b657f73072   8 minutes ago    /bin/sh -c npm install -g serve                 6.38MB    
23efc3af1d99   8 minutes ago    /bin/sh -c REACT_APP_BACKEND_URL=${REACT_APP…   8.67MB    
a1b3035fe830   9 minutes ago    /bin/sh -c npm install                          337MB     
4bc80442cb90   10 minutes ago   /bin/sh -c useradd -m appuser && chown -R ap…   1.04MB    
63ce49a22b78   26 minutes ago   /bin/sh -c #(nop)  ENV REACT_APP_BACKEND_URL…   0B        
1a2f856527f6   26 minutes ago   /bin/sh -c #(nop) COPY dir:e2a730706a3cfaa9e…   707kB     
a65f60a91fe6   26 minutes ago   /bin/sh -c #(nop) WORKDIR /app                  0B        
6704a5b73c01   26 minutes ago   /bin/sh -c mkdir -p /app                        0B        
f7de2514b19c   26 minutes ago   /bin/sh -c #(nop)  EXPOSE 5000                  0B        
c56ec223ce19   5 days ago       /bin/sh -c #(nop)  CMD ["node"]                 0B        
<missing>      5 days ago       /bin/sh -c #(nop)  ENTRYPOINT ["docker-entry…   0B        
<missing>      5 days ago       /bin/sh -c #(nop) COPY file:4d192565a7220e13…   388B      
<missing>      5 days ago       /bin/sh -c set -ex   && for key in     6A010…   7.59MB    
<missing>      5 days ago       /bin/sh -c #(nop)  ENV YARN_VERSION=1.22.19     0B        
<missing>      5 days ago       /bin/sh -c ARCH= && dpkgArch="$(dpkg --print…   98.5MB    
<missing>      5 days ago       /bin/sh -c #(nop)  ENV NODE_VERSION=16.20.0     0B        
<missing>      5 days ago       /bin/sh -c groupadd --gid 1000 node   && use…   334kB     
<missing>      6 days ago       /bin/sh -c set -ex;  apt-get update;  apt-ge…   510MB     
<missing>      6 days ago       /bin/sh -c apt-get update && apt-get install…   146MB     
<missing>      6 days ago       /bin/sh -c set -eux;  apt-get update;  apt-g…   33MB      
<missing>      6 days ago       /bin/sh -c #(nop)  CMD ["bash"]                 0B        
<missing>      6 days ago       /bin/sh -c #(nop) ADD file:54838b3dbf7839dad…   114MB

## After joining RUN commands
IMAGE          CREATED          CREATED BY                                      SIZE      COMMENT
203b6ea96cb3   31 seconds ago   /bin/sh -c #(nop)  ENTRYPOINT ["serve" "-s" …   0B        
49a6411583c6   31 seconds ago   /bin/sh -c #(nop)  USER appuser                 0B        
5b2cfdcddec7   32 seconds ago   /bin/sh -c npm install && REACT_APP_BACKEND_…   352MB     
4bc80442cb90   17 minutes ago   /bin/sh -c useradd -m appuser && chown -R ap…   1.04MB    
63ce49a22b78   33 minutes ago   /bin/sh -c #(nop)  ENV REACT_APP_BACKEND_URL…   0B        
1a2f856527f6   33 minutes ago   /bin/sh -c #(nop) COPY dir:e2a730706a3cfaa9e…   707kB     
a65f60a91fe6   33 minutes ago   /bin/sh -c #(nop) WORKDIR /app                  0B        
6704a5b73c01   33 minutes ago   /bin/sh -c mkdir -p /app                        0B        
f7de2514b19c   33 minutes ago   /bin/sh -c #(nop)  EXPOSE 5000                  0B        
c56ec223ce19   5 days ago       /bin/sh -c #(nop)  CMD ["node"]                 0B        
<missing>      5 days ago       /bin/sh -c #(nop)  ENTRYPOINT ["docker-entry…   0B        
<missing>      5 days ago       /bin/sh -c #(nop) COPY file:4d192565a7220e13…   388B      
<missing>      5 days ago       /bin/sh -c set -ex   && for key in     6A010…   7.59MB    
<missing>      5 days ago       /bin/sh -c #(nop)  ENV YARN_VERSION=1.22.19     0B        
<missing>      5 days ago       /bin/sh -c ARCH= && dpkgArch="$(dpkg --print…   98.5MB    
<missing>      5 days ago       /bin/sh -c #(nop)  ENV NODE_VERSION=16.20.0     0B        
<missing>      5 days ago       /bin/sh -c groupadd --gid 1000 node   && use…   334kB     
<missing>      6 days ago       /bin/sh -c set -ex;  apt-get update;  apt-ge…   510MB     
<missing>      6 days ago       /bin/sh -c apt-get update && apt-get install…   146MB     
<missing>      6 days ago       /bin/sh -c set -eux;  apt-get update;  apt-g…   33MB      
<missing>      6 days ago       /bin/sh -c #(nop)  CMD ["bash"]                 0B        
<missing>      6 days ago       /bin/sh -c #(nop) ADD file:54838b3dbf7839dad…   114MB     

# Backend
## Before optimizations
IMAGE          CREATED          CREATED BY                                      SIZE      COMMENT
9deaee1b2569   15 minutes ago   /bin/sh -c #(nop)  ENTRYPOINT ["./server"]      0B        
8b3d92b3ddfa   15 minutes ago   /bin/sh -c #(nop)  EXPOSE 8080                  0B        
fd36352e7932   15 minutes ago   /bin/sh -c #(nop)  ENV REQUEST_ORIGIN=http:/…   0B        
ef45bf6772de   15 minutes ago   /bin/sh -c #(nop)  ARG PORT=8080                0B        
004c2e9de0ef   15 minutes ago   /bin/sh -c go build                             146MB     
8af91d9b1ef0   16 minutes ago   /bin/sh -c #(nop) COPY dir:a878d41df132f635a…   28.3kB    
a45add8eb42a   16 minutes ago   /bin/sh -c #(nop) WORKDIR /app                  0B        
31720d380305   16 minutes ago   /bin/sh -c mkdir -p /app                        0B        
972d8c0bc0fc   15 months ago    /bin/sh -c #(nop) WORKDIR /go                   0B        
<missing>      15 months ago    /bin/sh -c mkdir -p "$GOPATH/src" "$GOPATH/b…   0B        
<missing>      15 months ago    /bin/sh -c #(nop)  ENV PATH=/go/bin:/usr/loc…   0B        
<missing>      15 months ago    /bin/sh -c #(nop)  ENV GOPATH=/go               0B        
<missing>      15 months ago    /bin/sh -c set -eux;  arch="$(dpkg --print-a…   387MB     
<missing>      15 months ago    /bin/sh -c #(nop)  ENV GOLANG_VERSION=1.16.15   0B        
<missing>      15 months ago    /bin/sh -c #(nop)  ENV PATH=/usr/local/go/bi…   0B        
<missing>      15 months ago    /bin/sh -c set -eux;  apt-get update;  apt-g…   227MB     
<missing>      15 months ago    /bin/sh -c apt-get update && apt-get install…   152MB     
<missing>      15 months ago    /bin/sh -c set -ex;  if ! command -v gpg > /…   18.9MB    
<missing>      15 months ago    /bin/sh -c set -eux;  apt-get update;  apt-g…   10.7MB    
<missing>      15 months ago    /bin/sh -c #(nop)  CMD ["bash"]                 0B        
<missing>      15 months ago    /bin/sh -c #(nop) ADD file:9c4db2a9644ee3029…   124MB

## After joining RUN commands
IMAGE          CREATED          CREATED BY                                      SIZE      COMMENT
c07fbc3b823c   6 minutes ago    /bin/sh -c #(nop)  ENTRYPOINT ["./server"]      0B        
68ab25f2b379   6 minutes ago    /bin/sh -c #(nop)  USER appuser                 0B        
a9d8f6a03436   6 minutes ago    /bin/sh -c #(nop)  EXPOSE 8080                  0B        
119d067ff5c7   6 minutes ago    /bin/sh -c #(nop)  ENV REQUEST_ORIGIN=http:/…   0B        
c86eb5862ad6   6 minutes ago    /bin/sh -c go build && useradd -m appuser &&…   146MB     
8af91d9b1ef0   27 minutes ago   /bin/sh -c #(nop) COPY dir:a878d41df132f635a…   28.3kB    
a45add8eb42a   27 minutes ago   /bin/sh -c #(nop) WORKDIR /app                  0B        
31720d380305   27 minutes ago   /bin/sh -c mkdir -p /app                        0B        
972d8c0bc0fc   15 months ago    /bin/sh -c #(nop) WORKDIR /go                   0B        
<missing>      15 months ago    /bin/sh -c mkdir -p "$GOPATH/src" "$GOPATH/b…   0B        
<missing>      15 months ago    /bin/sh -c #(nop)  ENV PATH=/go/bin:/usr/loc…   0B        
<missing>      15 months ago    /bin/sh -c #(nop)  ENV GOPATH=/go               0B        
<missing>      15 months ago    /bin/sh -c set -eux;  arch="$(dpkg --print-a…   387MB     
<missing>      15 months ago    /bin/sh -c #(nop)  ENV GOLANG_VERSION=1.16.15   0B        
<missing>      15 months ago    /bin/sh -c #(nop)  ENV PATH=/usr/local/go/bi…   0B        
<missing>      15 months ago    /bin/sh -c set -eux;  apt-get update;  apt-g…   227MB     
<missing>      15 months ago    /bin/sh -c apt-get update && apt-get install…   152MB     
<missing>      15 months ago    /bin/sh -c set -ex;  if ! command -v gpg > /…   18.9MB    
<missing>      15 months ago    /bin/sh -c set -eux;  apt-get update;  apt-g…   10.7MB    
<missing>      15 months ago    /bin/sh -c #(nop)  CMD ["bash"]                 0B        
<missing>      15 months ago    /bin/sh -c #(nop) ADD file:9c4db2a9644ee3029…   124MB    