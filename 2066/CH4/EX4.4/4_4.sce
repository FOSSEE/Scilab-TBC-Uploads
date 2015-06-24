clc
clear
//Initialization of variables
r0=1 
ri=0
//calculations
function v= func1(y)
    v= 2*y^(1/7) *(y-1)
endfunction
V=intg(ri,r0,func1)
function alpha= func2(y)
    alpha= 1/ (%pi*V^3) *2*%pi *(y)^(3/7) *(y-1) 
endfunction
a2=intg(ri,r0,func2)
//results
printf("Kinetic energy correction factor = %.2f",a2)
