clear
clc
disp("example 9.4")
no=1.7*10^24
hl=7.1*10^8
t=10*10^8
lm=0.693/(hl)
lmda=lm/(8760*3600)
ia=lmda*no
n=no*(exp(-lm*t))
printf("(lamda) disintegrations per sec is %ebq \n initial activity is lamda*na is %ebq \n final number of atoms is %eatoms",lmda,ia,n)
