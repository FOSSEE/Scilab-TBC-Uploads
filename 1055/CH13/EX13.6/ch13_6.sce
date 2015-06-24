//Determine the fault current when (i)L-G (ii)L-L (iii)L-L-G fault takes place at P.
clear
clc;
Vbl=13.8*115/13.2;// base voltage on the line side of transformer(kV)
Vbm=120*13.2/115;// base voltage on the motor side of transformer(kV)
Xt=10*((13.2/13.8)^2)*30/35;// percent reactance of transformer
Xm=20*((12.5/13.8)^2)*30/20;// percent reactance of motor
Xl=80*30*100/(120*120);//percent reactance of line 
Xn=2*3*30*100/(13.8*13.8);// neutral reactance
Xz=200*30*100/(120*120);
Zn=%i*.146;// negative sequence impedence
Zo=.06767;// zero sequence impedence
Z=%i*.3596;//total impedence
Ia1=1/Z;
Ia2=Ia1;
Iao=Ia2;
If1=3*Ia1;
Ib=30*1000/(sqrt(3)*13.8);
Ibl=30*1000/(sqrt(3)*120);
Ifc=Ibl*abs(If1);
Z1=%i*.146;
Z2=Z1;
IA1=1/(Z1+Z2)
IA2=-IA1
L=(cosd(120)+ %i*sind(120));
IAo=0;
IB=(L^2)*IA1 + L*IA2;
IC=-IB;
IF=abs(IB)*Ibl;
Zo=%i*.06767;
ia1=1/(Z1+(Zo*Z2/(Zo+Z2)));
ia2=ia1*Zo/(Z2+Zo);
iao=%i*3.553;
If2=3*iao;
IF2=abs(If2*Ibl);
mprintf("Fault Current (i)L-G fault, If=%.0f amps\n ",Ifc);
mprintf("(ii)L-L fault ,If=%.1f amps\n",IF);
mprintf("(iii)L-L-G, If =%.0f amps\n",IF2);
