clc;funcprot(0);//EXAMPLE 20.26
// Initialisation of Variables
p1=1;............//Intake pressure in bar
p2=4;..............//Pressure after first stage in bar
p3=16;............//Final pressure in bar
ns=2;............//No of stages
t1=300;............//Intake temperature in K
n=1.3;............//Compression index
klp=0.04;.........//Clearance ratio for low pressure cylinder
khp=0.06;........//Clearance ratio for high pressure cylinder
N=440;............//Engine rpm
R=0.287;..........//Gas constant in kJ/kgK
m=10.5;.............//Mass of air delivered in kg/min
cp=1.005;.........//Specific heat at constant pressure in kJ/kgK
//Calculations
rp=sqrt(p1*p3);...........//Pressure ratio per stage
P=((ns*n)/(n-1))*R*t1*(m/60)*(((p3/p1)^((n-1)/(ns*n)))-1);..........//Work done per min in Nm
disp(P,"Power required in kW:")
isoWd=(m/60)*R*t1*log(p3/p1);..........//Isothermal work done in Nm
disp(isoWd,"Isothermal work done in kW:")
etaiso=isoWd/P;...............//Isothermal efficiency
disp(etaiso*100,"Isothermal efficiency in %:")
FAD=(m*R*t1*1000)/(p1*10^5);.............//Free air delivered in m^3/min
disp(FAD,"Free air delivered in m^3/min:")
t2=t1*((p2/p1)^((n-1)/n));.....//Temperature at the end of compression in K
Qt=(m/60)*cp*(t2-t1);..............//Heat transferred in intercooler in kW
disp(Qt,"Heat transferred in intercooler in kW:")
etavlp=(1+klp)-(klp*((p2/p1)^(1/n)));..........//Volumetric efficiency of low pressure stage
etavhp=(1+khp)-(khp*((p2/p1)^(1/n)));..........//Volumetric efficiency of high pressure stage
vslp=FAD/(N*etavlp);......//Swept volume for low pressure stage in m^3
vclp=klp*vslp;..............//Clearance volume for low pressure stage in m^3
printf("\nSwept volume for low pressure stage in m^3:   %f\n",vslp)
printf("\nClearance volume for low pressure stage in m^3:  %f\n",vclp)
vshp=FAD/(N*rp*etavhp);......//Swept volume for high pressure stage in m^3
vchp=khp*vshp;..............//Clearance volume for high pressure stage in m^3
printf("\nSwept volume for high pressure stage in m^3:  %f\n",vshp)
printf("\nClearance volume for high pressure stage in m^3:  %f\n",vchp)
