clc
//Initialization of variables
g=1000*9.81 //kg/m^3
hc=20 //m
Ax=40*1 //m^2
y1=0 //m
y2=40 //m
//calculations
Fx=g*hc*Ax
function[f] =fy(y)
    f=(12*y)^(1/3)
endfunction
Fy=intg(y1,y2,fy)
Fy=g*Fy(1)
F=sqrt(Fx^2 +Fy^2)
//results
printf("Net force = %d kN",F/1000)
//The answer is a bit different due to rounding off error in the textbook
