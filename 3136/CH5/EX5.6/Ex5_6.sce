clear all; clc;

disp("Since dBt=10*[((log10^dBb)/10)+(10^dBf/10)] we can determine dBf")

//let x=10^(dBt/10)
x=10^7

//let y=10^(dBb/10)
y=10^6.5

//let z=x-y
z=x-y

disp("dBf=10*(log(10^(dBt/10)+10^(dBb/10)))")
dBf=10*[log10(z)]
printf(" Thus dBf= %0.2f",dBf)
