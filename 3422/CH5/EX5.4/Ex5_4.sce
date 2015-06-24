//Example 5.4, Page no 110
clc
p=400*20*.88*sqrt(3)//input power in watt
l=12193.6-10000//in watt, full load loss
e=l*60//energy lost per minute
ws=(2*%pi*1000)/60//angular frequency
j=.5
R=1//resistance in ohm ir R1/R2
El=(0.5*j*ws**2)*(1+R)
//disp(El)
N=e/El
//disp(N)
printf("\n The number of starts that can be made is %d ",N)
ws=(2*%pi*1500)/60//angular frequency
j=.5
R=1//resistance in ohm ir R1/R2
El=(0.5*j*ws**2)*(1+R)
//disp(El)
N=e/El
//disp(N)
printf("\n The number of permissible starts is %d ",N)