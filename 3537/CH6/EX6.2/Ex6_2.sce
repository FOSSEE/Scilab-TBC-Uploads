//Example 6_2
clc();
clear;
//To find how many photons emitted and power density
v=3*10^8
lamda=632.8*10^-9
fre=v/lamda
outpow=2.3*10^-3
n=1
h=6.626*10^-34
N=(outpow*n)/(h*fre)
printf("Number of photons emitted is")
disp(N)
printf("photons/second\n")
spotarea=1*10^-6
density=outpow/spotarea
printf("Power density is %d kW/met^2",density)
