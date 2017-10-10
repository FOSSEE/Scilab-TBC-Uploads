clc
//initialisation of variables
a=1000*10^-3//m^3/min
t=1/60//min/s
p=4*10^-2//m
p2=2*10^-2//m
p1=10*10^5//N/m^2
p3=1.26*10^-3//m^2
b=1000//N/s^2/m^4
//CALCULATIONS
V1=(4*a*t)/((%pi)*(p)^2)//m/s
V2=(4*a*t)/((%pi)*(p2)^2)//m/s
Fr=(p1*p3)-(b)*(a)*t*(V2-V1)//N
//RESULTS
printf('The magnitude and direction of the resultant force actiong on the hose is=% f N',Fr)
