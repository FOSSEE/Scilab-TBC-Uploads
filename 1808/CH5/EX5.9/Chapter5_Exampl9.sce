clc
clear
//INPUT DATA
p1=1;//ambient pressure in bar
t1=15;//ambient temperature in Degree C
ps=0.98;//suction pressure in bar
pd=7;//Delivery pressure in bar
ts=30;//suction temperature in Degree C
x=1.25;//ratio of l,d
c=1/15;//clearance
va=100;//volume in m^3/min
n=1.3;//for cylinders

//CALCULATIONS

//(a)If ambient and suction conditions are same
nv1=(1+c-c*((pd/p1)^(1/n)))*100;//volumetric efficiency in percentage
vs1=va/nv1;//swept volume in m^3/min
d1=sqrt(0.260146*4/3.14);//bore length in m
l1=x*d1;//stroke in m
N1=500/(2*l1);//Speed in rpm
ip1=(n/(n-1))*p1*10^2*(va/60)*((pd/p1)^((n-1)/n)-1);//indicated power in kW

//(b)If ambient and suction conditions are different
nv2=(1+c-c*((pd/ps)^(1/n)))*100;//volumetric efficiency in percentage
v14=p1*va*(ts+273)/(ps*(t1+273));//volume of air delivered in m^3/min
vs2=(v14/nv2);//swept volume in m^3/min
d2=sqrt(vs2*4/(3.14*500));//bore length in m
l2=x*d2;//stroke length in m
N2=500/(2*l2);//speed in rpm
ip2=(n/(n-1))*ps*10^2*(v14/60)*((pd/ps)^((n-1)/n)-1);//indicated power in kW

//OUTPUT
printf('(a)If ambient and suction conditions are same \n (i)volumetric efficiency %3.3f percentage \n (ii)Bore %3.4f m \n stroke %3.4f m \n speed %3.1f rpm \n (iii)Indicated power is %3.2f kW \n (b)If ambient and suction conditions are different \n (i)volumetric efficiency %3.3f percentage \n (ii)Bore %3.4f m \n stroke %3.4f m \n speed %3.1f rpm \n (iii)Indicated power is %3.2f kW \n ',nv1,d1,l1,N1,ip1,nv2,d2,l2,N2,ip2)



