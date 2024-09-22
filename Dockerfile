FROM rust

WORKDIR /workspace

RUN apt update && apt install -y cmake git lua5.4

RUN git clone https://github.com/wu-lang/wu.git

WORKDIR /workspace/wu

RUN cargo install wu 

WORKDIR /code

COPY bin .

CMD "./run.sh"