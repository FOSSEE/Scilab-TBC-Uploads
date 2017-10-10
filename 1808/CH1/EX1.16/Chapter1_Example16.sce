clc
clear
//INPUT DATA
pmi=6;//Mean effective pressure in bar
L=0.45;//Stroke in m
d=0.3;//Rope diameter in m
N=12000;//Total revolutions made
nc=1;//number of cylinders
n=2;//for four cylinders
D=1.8;//Brake drum diameter in m
x=0.02136;//difference of W and S
cpw=4.18;//specific pressure of water
cpe=1.005;//specific pressure of air
cv=45000;//calorific value
two=60;//outlet water temperature
twi=15;//inlet water temperature
te=300;//exhaust gas temperature in Degree C
ta=20;//room temperature in Degree C
mf=7.6;//mass flow rate in kg/h
mw=550;//water flo rate in kg/h
me=367.6;//total flow rate in kg/h


//CALCULATIONS
IP=(pmi*102*L*(3.14*(d^2)/4)*N*nc)/(60*60*n);//Indicated power in kW
BP=((x)*3.14*(D+d)*N)/60;//Brake power in kW
nit=(IP/(mf*cv/3600))*100;//Indicetad thermal efficiency in percentage
nm=(BP/IP)*100;//mechanical efficiency in percentage
Qs=mf*cv/60;//heat supplied in kJ/min
a11=(BP/Qs)*100;//% of heat equivalent to BP
Qw=(mw*cpw*(two-twi))/60;//Heat loss to cooling water in kW
b11=(Qw/Qs)*100;//% of heat lost to cooling water
Qe=(me*cpe*(te-ta))/60;//Heat loss to exhaust gases in kW
c11=(Qe/Qs)*100;//% of heat lost to exhaust gases
Qu=(Qs-(BP*60+Qw+Qe));//Enthalpy of unaccount in kW
d11=(Qu/Qs)*100;//unaccounted heat in percentage

//OUTPUT
printf('(i)Indicated power is %3.2f kW \n  brake power is %3.2f kW \n (ii)Indicated thermal efficiency is %3.2f percentage \n (iii)Mechanical efficiency is %3.2f percentage \n (iv)HEAT BALANCE SHEET \n (I)Heat supplied %3.i kJ/min \n (II)Heat utilised in the system is %3.2f kW',IP,BP,nit,nm,Qs,Qu)
