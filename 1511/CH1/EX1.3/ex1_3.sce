// Example 1.3 page no-10
clear
clc


///(1)
eps=(2000)/3 //V/cm
e=1.6*10^-19  //C
m=9.1*10^-31  //kg
v= 10^7  // dy/dt=v m/sec
t=v*m/(e*eps*100)
t=floor(t*10^11)
t=t/10
printf("\n(1)\nTime ,t=%.1f*10^-10 sec\n",t)
t=t*10^-10
//(2)
y=(e*eps*100*t^2)/(2*m)
printf("\n(2)\nDistance travelled by electron , y=%f m\n",y)
//(3)
pd=eps*100*y
printf("\n(3)\nPotential Drop=%.1f Volts",pd)
