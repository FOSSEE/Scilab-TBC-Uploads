//Chapter1,Example 1.7,Pg1.12
function[at]=a0toat(a0)
    t=temp;
    at=a0/(1+a0*t)
endfunction
function[a0]=attoa0(at)
    t=temp;
    a0=at/(1-at*t)
endfunction
clc;
at=1/254.5 //given
temp=20 //temperature
a00=attoa0(at) //storing the returned temperature coefficient in variable a00
printf("\n Temp coeff = %.6f per degree C \n",a00)
temp=60
at1=a0toat(a00)
printf("\n Temp coeff at 60 degress = %8f per degree C \n",at1)
