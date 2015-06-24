clc
// Intialization of variables
T1 = 0
T2 = %pi/6
// Calculations
function y=f(x),y=-2,endfunction
I=intg(0,%pi/6,f)
// results
printf(" the volume rate of flow is %.2f ft^2/s",I)
