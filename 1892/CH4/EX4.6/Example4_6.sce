// Example 4.6

clear; clc; close;
format('v',9);

// Given data
lm=6*10^-3;//magnet length in m
g=2*10^-3;//in m
Tph=200;//turns
Br=0.3;//in T
l=50*10^-3;//in m
n=25*10^-3;//in m
I=10*10^-3;//in A
N=200;//turns
mo=4*%pi*10^-7;//permittivity
//Calculations
Am=(2/3)*%pi*[n-g-lm/2]*l;//in m^2
Ag=[(2/3)*%pi*(n-g/2)+2*g]*(l+2*g);//in m^2    
Cfi=Am/Ag;//unitless
//For normal BLDG motor, HC=606 KA/M
HC=606;//in  KA/M
Hm=N*I/l;//KA/M
Bm=Br*[1-Hm/HC];//in T
Mrec=(Br-Bm)*10^-3/(4*%pi*10^-7*40);
Pmo=mo*Mrec*Am/lm;//in m-Wb/AT
Pmo=Pmo*10^-3;//in Wb/AT
Kc=1.05;//given constant
g_dash=Kc*g;//in m
Rg=g_dash/mo/Am;
Bg=Cfi*Br/(1+Pmo*Rg);//in T
Torque=2*Tph*Bg*l*n*I;//in N-m
disp(Torque,"Torque per phase in N-m : ");
