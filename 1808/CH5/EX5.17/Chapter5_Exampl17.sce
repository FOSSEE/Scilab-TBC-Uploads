clc
clear
//INPUT DATA
p1=0.98;//suction pressure in bar
p3=18;//delivery pressure in bar
t1=293;//free conduction temperature in K
t5=303;//suction temperature in K
pa=1;//ambient temperature in bar
n=1.3;//index of expansion
ta=293;//ambient temperature in K
N=150;//speed in rpm
c=0.06;//clearence volume
v1=5;//volume in m^3
R=0.287;//gas constant


//CALCULATIONS
m=p1*10^2*v1/(R*t1);//mass of air handled/min
p2=(p1*p3)^(1/2);//pressure in bar
ip=N*(n/(n-1))*(m/60)*R*t1*(((p3/p1)^((n-1)/(n*N)))-1);//indicated power in kW
nv=1+c-(c*((p2/p1)^(1/n)));//volumetric efficiency in percentage
va=4.5*1*t1/(p1*t5);//colume of air in m^2/min
vs=va/nv;//swept volume in m^2/min
d=(vs*4/(3.14*N))^(1/3)*100;//dimensions im cm

//OUTPUT
printf('(i)Indicated power is %3.3f kW \n (ii)The dimensions of the LP cylinder (d=l)%3.2f cm',ip,d)



