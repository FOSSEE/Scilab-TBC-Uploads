clc
clear
//INPUT DATA
n=1.3;//index of expansion
N=2;//no.of stages
R=0.287;//gas constant
m=5;//mass flow rate
t1=288;//temperature in K
pd=16;//delivery pressure in bar
p1=1;//pressure in bar
cp=0.997;//specific pressure in kJ/kgK
cv=0.71;//specific volume in kJ/kgK
g=1.4;//constant
s=400;//speed in rpm
c1=0.05;//clearance volume
c2=0.08;//clearance volume

//CALCULATIONS
ip=N*(n/(n-1))*(m/60)*R*t1*(((pd/p1)^((n-1)/(n*N)))-1);//indicated power in kW
ipiso=(m/60)*R*t1*log(pd/p1);//indicated power in isothermal condition
niso=(ipiso/ip)*100;//Isothermal efficiency in percentage
t2=t1*((pd/p1)^((n-1)/(n*N)));//temperature in K
Qlp=cv*(g-n)*(t2-t1)*(m/60)/(n-1);//Heat transferred in LP cylinder per second
Qic=(m/60)*cp*(t2-t1);//Heat transferred in intercooler per seconds
va=(m/60)*R*t1/(p1*10^2);//Free air delivered in m^3/s
nvlp=(1+c1-(c1*((pd/p1)^(1/N*n))));//Volumetric efficiency of LP cylinder in percentage
nvlp1=nvlp*100;//Volumetric efficiency of LP cylinder in percentage
nvhp=(1+c2-(c2*(pd/p1)^(1/N*n)));//Volumetric efficiency of HP cylinder in percentage
nvhp1=nvhp*100;//Volumetric efficiency of HP cylinder in percentage
vslp=va*60/(nvlp*s);//swept volume of LP cylinder
vshp=va*60/(sqrt(pd*p1)*nvhp*s);//swept volume of HP cylinder

//OUTPUT
printf('(i)Power required to run the compressor is %3.2f kW \n (ii)Isothermal efficiency is %3.2f percentage \n (iii)Heat transferred in LP cylinder per second is %3.4f kW \n (iv)Free air delivered is %3.5f m^3/sec \n (v)volumetric efficiency of LP is %3.2f percentage \n volumetric efficiency of HP is %3.2f percentage \n swept volume of LP is %3.6f m^3 \n swept volume of HP is %3.6f m^3 \n',ip,niso,Qlp,va,nvlp1,nvhp1,vslp,vshp)



