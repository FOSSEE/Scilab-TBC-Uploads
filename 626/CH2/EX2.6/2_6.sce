clear;
clc;
close;
disp("Example2.6")
d=0.2 //Diameter in meters.
M1=0.2 //inlet Mach no.
p1=100*10^3 //inlet pressure in Pa
Tt1=288 //total inlet temperature in K
q=100*10^3 //rate of heat transfer to fluid in Watt.
rg=287 //Gas constant in J/kg.K.
gm=1.4 //gamma
//(a)inlet mass flow:
m=((gm/rg)^(1/2))*(p1/(Tt1)^(1/2))*3.14*(d^2)/4*(M1/(1+((gm-1)/2)*(M1^2))^((gm+1)/(2*(gm-1))));

//(b)
qm=q/m; //Heat per unit mass.
//Tt1/Tcr=0.1736, pt1/Pcr=1.2346, ((Delta(s)/R)1=6.3402,p1/Pcr=2.2727)
Tcr=Tt1/0.1736;

Pcr=p1/2.2727;
//From energy equation:
cp=(gm/(gm-1))*rg;
Tt2=Tt1+(q/cp);
q1cr=cp*(Tcr-Tt1)/1000;
M2=0.22;
//From table : pt2/Pcr=1.2281, (Delta(s)/R)2=5.7395, p2/Pcr=2.2477.
//The percent total pressure drop is (((pt1/Pcr)-(pt2/Pcr))/(pt1/Pcr))*100.
p2=2.2477*Pcr;
dp=((1.2346-1.2281)/1.2346)*100;
//Entropy rise is the difference between (delta(s)/R)1 and (delta(s)/R)2.
ds=6.3402-5.7395;
//Static pressure drop in duct due to heat transfer is
dps=((p1/Pcr)-(p2/Pcr))*Pcr/1000;
disp(m,"(a)Mass flow rate through duct in kg/s:")
disp(q1cr,"(b)Critical heat flux that would choke the duct for the M1 in kJ/kg:")
disp(M2,"(c)The exit Mach No.:")
disp(dp,"(d)The percent total pressure loss (%):")
disp(ds,"(e)The entropy rise (delta(s)/R):")
disp(dps,"(f)The static pressure drop Delta(p) in kPa")