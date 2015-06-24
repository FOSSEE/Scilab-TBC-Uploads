clc
//Initialization of variables
cv=0.171  //B/lbm F
T2=580  //F
T1=520 //F
//calculations
function [cp]=fun(T)
    cp=cv/T
endfunction
ds=intg(T1,T2,fun)
//results
printf("Change in entropy = %.4f B/lbm R",ds)
