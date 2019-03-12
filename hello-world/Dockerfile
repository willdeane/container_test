FROM ubuntu:latest

RUN apt update && apt -y install nasm && apt -y install binutils
RUN mkdir /app
ADD hello.asm /app
WORKDIR /app
run nasm -f elf32 -o hello.o hello.asm && ld -m elf_i386 hello.o -o hello && strip hello

FROM scratch

COPY --from=0 /app/hello /hello
CMD ["/hello"]
