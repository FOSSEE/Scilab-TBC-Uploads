clc
clear
//INPUT DATA
p1=0.9;//initial pressure in bar
pd=18;//delivery pressure in bar
n=1.3;//index of compression
R=0.287;//gas constant
t1=303;//temperature in K
t0=290;//temperature in K
p11=1;//pressure in bar

//CALCULATIONS
p2=sqrt(p1*pd);//intermediate pressure in bar
v0x=(p1/1)*(t0/t1)*0.891743;//volume 
nva=(v0x);//volume of air reduced to atmospheric conditions
wd=2*((n/(n-1)))*R*t1*(((pd/p1)^((n-1)/(2*n)))-1);//work done required per kg of air delivered in kJ/kg
wdis=R*t0*log(pd/p11);//isothermal work done in kJ/kg
niso=(wdis/wd);//isothermal efficiency in percentage

//OUTPUT
printf('(i)Volumetric efficiency referred to atm conditions %3.5f \n (ii)The work done required to deliver air is %3.2f kJ/kg \n (iii)isothermal efficiency is %3.3f percentage',nva,wd,niso)


