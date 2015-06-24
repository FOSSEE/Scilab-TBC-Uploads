//To detremine the the voltage at the generating station and efficiency of transmission
clear
clc;
R=0.496;// resistance
X=1.536;
Vr=2000;
Z=(10*2*2/(11*11)) + %i*30*2*2/(11*11);
Zt=(.04+(1.3*2*2/(11*11))) + %i*(.125 + (4.5*2*2/(11*11)));//Transformer impedence
Il=250*1000/2000;// line current(amps.)
Pl=Il*Il*R;//line loss(kW)
Po=250*0.8;// output(kW)
cosr=0.8;// power factor
sinr=.6;
%n=200*100/(200+7.7);
Vs=(Vr*cosr+Il*R)+%i*(Vr*sinr+Il*X);
V=sqrt((1662^2)+ (1392^2));
mprintf("efficiency= %.1f percent \n",%n);
mprintf("Sending end voltage,|Vs|=%.0f volts",V);
