clc
//Initialization of variables
T1=1000 //R
T2=2000 //R
//calculations
function y =cp(t)
    y=9.47 -3.47*10^3 /t + 1.16*10^6 /t^2
endfunction
cp2= 1/(T2-T1) *(intg(T1,T2,cp))
//results
printf("Specific heat = %.2f Btu/mol R",cp2)
