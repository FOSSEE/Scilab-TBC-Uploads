clc
//initialisation of variables
i=16/(62)^0.66//in hr
q=(16*10^0.31)/(62)^0.66//in hr
c=1.0//max
C1=c*(0.01)^0.31//in
C2=c*(0.1)^0.31//in
x1=640//cfs
//CALCULATIONS
Y1=C1*i*c*x1//cfs
Y2=C2*q*c*x1//cfs
//RESULTS
printf('the time of concentration=% f cfs',Y2)
