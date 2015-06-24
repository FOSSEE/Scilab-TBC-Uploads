clc
clear
//INPUT DATA
np=1.39 //refractive index of prism
nl=1.29 //refractive index of liquid
a=62 //refracting angle of prism
//calculation
x=np*sind(62/2)/nl//snells law
y=asind(x)
d=(y*2)-a//minimum deviation
//output
printf("the minimum deviation is %3.3f degree",d)
