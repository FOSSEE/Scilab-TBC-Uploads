clc
clear
//INPUT DATA
k=0.05;//clearance
p1=0.98;//initial pressure in bar
pd=6.4;//delivery pressure in bar
n=1.32;//index of compression and expansion
p0=1;//initial pressure
t1=305;//temperature in K
v0=17;//volume in m^3
t0=288;//teperature in K
vs=0.02;//volume per stroke in m^3

//CLACULATIONS
nv=1+k-k*((pd/p1)^(1/n));//volumetric efficiency in percentage
va=p0*t1*v0/(p1*t0);//volume of air handled at suction condition
N=va/(vs*nv*2);//speed in rpm
ip=(n/(n-1))*p1*10^2*(va/60)*((pd/p1)^((n-1)/n)-1);//Indicated power in single stage double acting cylinder in kW

//OUTPUT
printf('(i)Speed of the compressor is %3.1f rpm \n (ii)Indicated power in single stage double acting cylinder is %3.2f kW',N,ip)






