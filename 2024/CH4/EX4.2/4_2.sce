clc
//Initialization of variables
T1=100 //F
T2=500 //F
//calculations
function y=cp(t)
    y=0.239 + 0.00003*t
endfunction
cpavg= 1/(T2-T1) *(intg(T1,T2,cp))
//results
printf("average value of Cp = %.3f Btu/lbm F",cpavg)
