clc
//Example 10.7
//Calculate the estimated pressure rise in the first stage of mutisatge centrifugal compressor
rho=0.075//lbm/ft^3
omega=1047//rad/sec
d=2//ft
dP=(1/2)*(rho)*(omega*d/2)^2/32.2/144//psia
//1 lbf.s^2 = 32.2 lbm into feed
//1 ft = 144 in^2
printf("the estimated pressure rise in the first stage of mutisatge centrifugal compressor is %f psia",dP);