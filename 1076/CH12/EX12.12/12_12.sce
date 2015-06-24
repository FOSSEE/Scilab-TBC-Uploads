clear;
clc;

ef=100
Zc=400
z=50

R=z+Zc;
E=(2*ef/(Zc+z+R))^2 *R
E=round(E*100)/100
mprintf("\n(a)Energy transfer max when R= %.0f ohm, energy= %.2f KW", R,E);

etB=2*ef*z/(z+Zc+R);
etB=round(etB*100)/100
mprintf("\n(b)Surge Voltage Transmitted= %.3f kV",etB)

it=etB*1000/z;
it=round(it*100)/100
mprintf("\nSurge Current Transmitted = %.2f A",it)

etA=2*ef*(z+R)/(z+Zc+R);
etA=round(etA*100)/100

erA=etA-ef
mprintf("\n(c)Surge Voltage Reflected= %.2f kV",erA)
irA=-1*erA*1000/Zc
mprintf("\nSurge Current Reflected= %.3f A",irA)


iF=ef*1000/Zc
Pi=ef*iF
mprintf("\n(d)Power Incident= %.0f kW",Pi)
Pr=erA*-irA
mprintf("\nPower Reflected= %.2f kW",Pr)
Pt=erA*it
mprintf("\nPower Transmitted= %.0f kW",Pt)


