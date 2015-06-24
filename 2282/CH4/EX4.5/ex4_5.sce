// Example 4.5, page no-134
clear
clc

p=2000      //electrical energy to be generated from solar panel in Watt
fi=1250     // solar flux falling normally to the solar cell in worst case
s=4*10^-4    // Area of each solar cell
e=0.15       //conversion efficiency of solar cell includingthe losses
theta=10     // angle made by rays of sun with normal 

n=p/(fi*s*e)
n1=ceil(n)*%pi
n2=ceil(n1)/cosd(theta)
printf("Required no of solar cells, n = %.0f cells",ceil(n1))
printf("\n No of cells when sunrays are making an angle of 10° are %.0f",ceil(n2))
