clc
clear
//INPUT DATA
pa=1;//ambient pressure in bar
ta=15;//temperature in Degree C
ps1=0.98;//ambient pressure in bar
ts1=30;//temperature in Degree C
c=0.04;//clearance
N=500;//speed in rpm
p1=1;//ambient pressure
p2=5;//discharge pressure
n=1.3;//for cylinders

//CALCULATIONS

//Suction and ambient conditions are same
vs=0.04*2*N;//swept volume in m^3/min
nv=1+c-(c*(p2/p1)^(1/n));//volumetric efficiency in percentage
v14=nv*(vs)/60;//volume in m^3/sec
ip=(n/(n-1))*p1*100*(v14)*((p2/p1)^((n-1)/n)-1);//indicated power in kJ/min

//Suction and ambient conditions are different
nv1=1+c-(c*(p2/ps1)^(1/n));//volumetric efficiency in percentage
v141=nv1*(vs)/60;//volume in m^3/sec
ip1=(n/(n-1))*ps1*100*(v141)*(((p2/ps1)^((n-1)/n))-1);//indicated power in kJ/min
vamb=p1*(ta+273)*(v141)/(pa*(ts1+273));//Air discharged in m^3/s

//OUTPUT
printf('(a)Suction and ambient conditions are same \n (i)Indicated power %3.2f kW \n (ii)air discharged is %3.4f m^3/s \n ',ip,v14)
printf('(a)Suction and ambient conditions are different \n (i)Indicated power %3.2f kW \n (ii)air discharged is %3.4f m^3/s \n ',ip1,v141)


