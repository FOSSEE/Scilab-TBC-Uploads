clc
//Initialization of variables
t1=500 //R
t2=1000 //R
//calculations
function y = cp1(t)
    y= 7.484 - 3.47*10^3 /t + 1.16*10^6 /t^2
endfunction
function y = cp2(t)
    y = 7.484/t - 3.47*10^3 /t^2 + 1.16*10^6 /t^3
endfunction
Q=intg(t1,t2,cp1)
ds=intg(t1,t2,cp2)
//results
printf("heat transferred = %d Btu/mole",Q)
printf("\n change in entropy = %.3f Btu/mole R",ds)
