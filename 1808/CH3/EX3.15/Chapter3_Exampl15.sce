clc
clear
//INPUT DATA
t1=300;//temperature in K
t3=1300;//temperature in K
cp=5.22;//specific pressure
cv=3.13;//specific volume
g=1.688;//for helium as working medium

//CALCULATIONS
Rc=((t3/t1)^(1/(2*(1.4-1))));//compression ratio
no1=(1-((1/Rc)^(1.4-1)))*100;//efficiency of air
Rcn=((t3/t1)^(1/(2*(g-1))));//compression ratio
no2=(1-((1/Rcn)^(g-1)))*100;//efficiency of helium

//OUTPUT
printf('(a)air as working medium efficiency is %3.2f percentage \n (b)Helium as working medium efficiency is %3.2f percentage \n Hence the change in efficiency is zero',no1,no2)

