clc
//initialisation of variables
clear
w= 12 //ft
q= 300 //ft^3/sec
h= 10 //ft
g= 32.2 //ft/sec^2
R= 2.6
//CALCULATIONS
hc= ((q/12)^2/g)^(1/3)
r= h/hc
h1= hc*(((h/hc)+0.5*(hc/h)^2)-0.5*R^2)
//RESULTS
printf ('hc = %.2f ft',hc)
printf ('\n stream depth = %.2f ft',h1)

