clc
clear
//Initialization of variables
g=32.2
gam=62.4
r0=1
//calculations
function al= func1(r)
    al=8/r0^8 *(r0^2-r^2)^3 *(2*r)
endfunction
alpha=intg(0,r0,func1)
function a2= func2(r)
    a2=4/r0^6 *(r0^2 -r^2) ^2 *(2*r)
endfunction
bet=intg(0,r0,func2)
//results
printf("Alpha = %d ",alpha)
printf("\n beta = %.2f",bet)
