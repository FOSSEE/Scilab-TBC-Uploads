clc
clear
//INPUT DATA
N=450;//speed in rpm
cv=44000;//calorific value in kJ/kg
T=450;//torque required
pmi=3;//mean effective pressure in bar
L=0.27;//stroke in m
d=0.22;//bore in m
pa=1.014;//atm.pressure
nc=1;//number of cylinders
n=1;//for single cylinder
mf=5.4;//mass flow rate in kg/hr
ra=1.20584;//density of fuel in kg/kW.hr
ma=167.4;//mass of air in kg/hr
Ra=0.287;// gas constant kJ/kgk
Te=300;//temperature in k
mw=440;//mass of water in kg/hr
cpw=4.187;//specific pressure
dTc=36.1;//Rise in temperature in degree C
Ta=20;//temperature in K
d1=6.23;//bore
me=172.8;//exhaust gas mass in kg/hr
cpe=1.005;//atmospheric pressure

//CALCULATIONS
BP=(2*3.14*(N/1000)*(T/60)*(1.5/2));//Brake power in kW
IP=(pmi*100*L*(3.14*(d^2)/4)*N*nc)/(60*n);//Indicated power in kW
nit=(IP/((mf/3600)*cv))*100;//Indicated thermal efficiency in percentage
bsfc=(mf/BP);//Brake specific fuel consuption in kg/kWh
Va=(ma*Ra*(Ta+273))/(pa*100*60);//volume folw rate of air in m^3/min
Vs=((3.14*(d^2)/4)*L*N*(nc/n));;//swept volume in m^3/min
nv=(Va/Vs)*100;//Volumetric efficiency in percentage
Qs=(mf*cv/3600);//Heat supplied in kW
Qw=(mw*cpw*(dTc))/3600;//Heat loss to cooling water in kW
Qe=(me*cpe*(Te-Ta))/3600;//Heat loss to exhaust gases in kW
c1=(Qe/Qs)*100;// % heat lost to exhaust gases
Qu=(Qs-(BP+Qw+Qe+d1));//Enthalpy of unaccount in kW
e1=(Qu/Qs)*100;//unaccounted heat in percentage

//OUTPUT
printf('(i)Brake power is %3.3f kW \n (ii)Indicated power is %3.3f kW \n (iii)Indicated thermal efficiency is %3.3f percentage \n (iv)Brake specific fuel consumption is %3.4f kg/kW.hr \n (v)Volumetric efficiency is %3.1f percentage \n(vi)Draw up heat balance sheet \n (I)Heat supplied is %3.i kW \n(II)Heat utilised in the system is %3.2f perentage',BP,IP,nit,bsfc,nv,Qs,c1)
