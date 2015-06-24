// To determine the (i)the neutral impedence of line (ii)line current (iii)rate of energy absorption , rate of reflection and state form of reflection (iv) terminating resistance (v)amount of reflected and transmitted power 
clear
clc;
L=2*(10^-7)*log(100/.75);//inductance per unit length
C=2*%pi*(10^-9)/(36*%pi*log(100/.75));//Capacitance per phase per unit length (F/m)
Z1=sqrt(L/C);
E=11000;
mprintf("(i)the natural impedence of line=%.0f ohms\n",Z1);
Il=E/(sqrt(3)*Z1);//line current(amps)
mprintf("(ii)line current =%.1f amps\n",Il);
R=1000;
Z2=R;
E1=2*Z2*E/((Z1+Z2)*sqrt(3));
Pr=3*E1*E1/(R*1000);//Rate of power consumption
Vr=(Z2-Z1)*E/(sqrt(3)*(Z2+Z1)*1000);//Reflected voltage
Er=3*Vr*Vr*1000/Z1//rate of reflected voltage
mprintf("(iii)rate of energy absorption =%.1f kW\n",Pr);
mprintf("rate of reflected energy =%.1f kW\n",Er);
mprintf("(iv)Terminating resistance should be equal to surge impedence of line  =%.0f ohms\n",Z1);
L=.5*(10^-8);
C=10^-12;
Z=sqrt(L/C);// surge impedence
VR=2*Z*11/((Z1+Z)*sqrt(3));
Vrl=(Z-Z1)*11/((Z1+Z)*sqrt(3));
PR1=3*VR*VR*1000/(Z);
d=abs(Vrl);
Prl=3*d*d*1000/Z1;
mprintf("(v)Refracted power =%.1f kW\n",PR1);
mprintf("Reflected power =%.1f kW\n",Prl);
////Answer don't match exactly due to difference in rounding off of digits i between calculations
