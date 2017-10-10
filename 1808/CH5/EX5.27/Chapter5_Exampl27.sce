clc
clear
//INPUT DATA
p1=1;//initial pressure in bar
pd=9;//delivery pressure in bar
n=1.3;//index of compression
R=0.287;//gas constant
t1=300;//temperature in K
m=1;//mass of air
cp=1.005;//specific pressure

//CALCULATIONS
p2=sqrt(p1*pd);//intermediate pressure in bar
wd=2*((n/(n-1))*R*t1*(((pd/p1)^((n-1)/(2*n)))-1));//minimum work done per min
t2=t1*((p2/p1)^((n-1)/n));//temperature K
Qr=m*cp*(t2-t1);//heat rejected to intercooler in kJ/kg

//OUTPUT
printf('(i)minimum work done per min %3.2f kJ/kg \n (ii)%3.4f kJ/kg ',wd,Qr)
