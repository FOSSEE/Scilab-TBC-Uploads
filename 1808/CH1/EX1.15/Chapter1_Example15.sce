clc
clear
//INPUT DATA
pmi=3;//Mean effective pressure in bar
L=0.27;//Stroke in m
N=450;//spedd in rpm
nc=1;//nuber of cylinders
n=1;//for single cylinder
mf=5.4;//mass flow rate in kg/h
cv=42000;//calorific value
d=0.22;//bore in m
T=355;//Temperature to exhaust gases in Degree C
mw=440;//mass of water in kg/h
cpw=4.18;//specific pressure of water
cpe=1.02;//specific pressure of air
dTc=36;//Rise in temperature in Degree C
me=172.8;//total mass flow in kg/s
Ta=20;//room temperature in Degree C
Tb=460;//Brake load in N

//CALCULATIONS
IP=(pmi*100*L*(3.14*(d^2)/4)*N*nc)/(60*n);//Indicated power in kW
nit=(IP*3600/(mf*cv))*100;//Indicated thermal efficiency in percentage
Qs=mf*cv/3600;//Heat supplied in kJ/s
BP=(2*3.14*(N/60)*(Tb/1000)*(1.5/2));//Brake power in kW
a11=(BP/Qs)*100;//% of heat equivalent to BP
Qw=(mw*cpw*(dTc))/3600;//Heat loss to cooling water in kJ/s
b11=(Qw/Qs)*100;//% of heat lost to cooling water
Qe=(me*cpe*(T-Ta))/3600;//Heat loss to exhaust gases in kW
c11=(Qe/Qs)*100;//% of heat lost to exhaust gases
Qu=(Qs-(BP+Qw+Qe));//Enthalpy of unaccount in kJ/s
d1=(Qu/Qs)*100;//unaccounted heat in percentage

//OUTPUT
printf('(i)Indicated thermal efficiency is %3.2f percentage \n (ii) \n (I)Heat supplied %3.i kJ/s \n (II)Heat utilised in the system is %3.2f',IP,Qs,Qe)

