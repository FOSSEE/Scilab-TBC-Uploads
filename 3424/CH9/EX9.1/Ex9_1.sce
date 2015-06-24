clc
//Initialization of variables
T = 90 // degrees
U = 25 //ft/s
//Calculations
funcprot(0)
function y1=f1(x1),y1=(20*1.24*(10^-3))/(x1^0.5),endfunction
I1=intg(0,4,f1)
function x=f(y),x=((0.744*(1-((y^2)/(4)))-(-0.893)))*10,endfunction
I=intg(-2,2,f)
// Results
printf("No lift generated ")
printf ("\ndrag generated when parallel to upstream flow is %.4f lb",I1)
printf ("\ndrag generated when perpendicular to upstream flow is %.1f lb",I)
