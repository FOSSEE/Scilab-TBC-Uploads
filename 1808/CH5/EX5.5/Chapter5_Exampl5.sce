clc
clear
//INPUT DATA
fad=14;//free air delivered in m^3/min
N=300;//speed in rpm
p2=7;//delivery pressure in bar
p1=1;//pressure in bar
n=1.3;//index of compression and expansion
t1=288;//temperature in K

//CALCULATIONS

//Without clearance volume
vs=fad/(N*2);//swept volume of the cylinder in m^3
t2=t1*(p2/p1)^((n-1)/n);//Delivery temperature in K
ip=(n/(n-1))*p1*10^2*(fad/60)*(((p2/p1)^((n-1)/n))-1);//indicated power in kW
d=((vs*4/(3.14*1.5))^(1/3))*100;//bore of the cylinder in cm
l=1.5*d;//stroke in cm

//with clearance volume
vs1=vs/(1.05-vs);//swept volume with clearence volume in m^3
t2=t1*(p2/p1)^((n-1)/n);//Delivery temperature in K
nv=(vs/vs1)*100;//volumetric efficiency in percentage
d1=((vs1*4/(3.14*1.5))^(1/3))*100;//bore of the cylinder in cm
l1=1.5*d1;//stroke in cm
//OUTPUT
printf('(a)Without clearance volume \n (i)swept volume of the cylinder is %3.4f m^3 \n (ii)The delivery temperature is %3.4f K \n (iii)Indicated power is %3.3f kW \n (iv)volumetric efficiency is 100percentage \n (v)bore of the cylinder is %3.2f cm \n stroke %3.4f cm \n',vs,t2,ip,d,l)

printf('(a)With clearance volume \n (i)swept volume of the cylinder is %3.4f m^3 \n (ii)The delivery temperature is %3.4f K \n (iii)Indicated power is %3.3f kW \n (iv)volumetric efficiency is %3.2f percentage \n (v)bore of the cylinder is %3.2f cm \n stroke %3.4f cm \n',vs1,t2,ip,nv,d1,l1)

