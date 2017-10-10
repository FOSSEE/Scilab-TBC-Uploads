clc
clear
//INPUT DATA
n=1.35;//for cylinders
p1=1;//pressure in bar
v1=1;//volume in m^3
p2=7;//pressure in bar
nm=0.85;//mechanical efficiency in percentage
nt=0.9;//Turbine efficiency in percentage
N=300;//speed in rpm

//CALCULATIONS
//(a)single acting cylinder
ip1=((n/(n-1))*p1*10^2*v1*(((p2/p1)^((n-1)/n))-1))/60;//indicated power in kW
bp1=ip1/nm;//brake power in kW
mp1=bp1/nt;//motor power in kW
d1=((v1*4/(1.5*N*3.14))^(1/3))*100;//cylinder bore in single acting cylinder in cm
l1=(1.5)*d1;//stroke in cm

//Double acting cylinder
d2=((v1*4/(1.5*N*2*3.14))^(1/3))*100;//cylinder bore in double acting cylinder
l2=1.5*d2;//stroke in cm

//OUTPUT
printf('(a)Single acting cylinder \n (i)Indicated power is %3.3f kW \n (ii)Power input to the compressor %3.3f kW \n (iii) cylinder bore in single acting cylinder is %3.4f cm \n stroke is %3.2f cm \n',ip1,mp1,d1,l1)

printf('(a)Double acting cylinder \n (i)Indicated power is %3.3f kW \n (ii)Power input to the compressor %3.3f kW \n (iii) cylinder bore in double acting cylinder is %3.4f cm \n stroke is %3.2f cm',ip1,mp1,d2,l2)

