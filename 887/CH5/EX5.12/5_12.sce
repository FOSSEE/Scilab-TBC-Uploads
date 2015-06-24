clc
//ex5.12
V_Y=1000;      //line to neutral voltage
f=60;      //frequency
L=0.1;      //inductance
R=50;
W=2*%pi*f;      //angular frequency
Z=complex(R,W*L);      //complex impedance
phi=atan(imag(Z)/real(Z));
//Balanced wye-wye calculations
V_an=complex(1000*cos(0),1000*sin(0));
V_bn=complex(1000*cos(-2*%pi/3),1000*sin(-2*%pi/3));
V_cn=complex(1000*cos(2*%pi/3),1000*sin(2*%pi/3));
I_aA=V_an/Z;
I_bB=V_bn/Z;
I_cC=V_cn/Z;
//line-line phasors
V_ab=V_an*sqrt(3)*complex(cos(%pi/6),sin(%pi/6));
V_bc=V_bn*sqrt(3)*complex(cos(%pi/6),sin(%pi/6));
V_ca=V_cn*sqrt(3)*complex(cos(%pi/6),sin(%pi/6));
I_L=abs(I_aA);
P=(3/2)*V_Y*I_L*cos(phi);      //power
Q=(3/2)*V_Y*I_L*sin(phi);      //reactive power
printf(" All the values in the textbook are approximated hence the values in this code differ from those of Textbook")
disp('LINE CURRENTS')
disp(I_aA,'IaA=')
disp(I_bB,'IbB=')
disp(I_cC,'IcC=')
disp('LINE-LINE VOLTAGES')
disp(V_ab,'Vab=')
disp(V_bc,'Vbc=')
disp(V_ca,'Vca=')
disp(P,'POWER IN WATTS')
disp(Q,'REACTIVE POWER IN VARs')
disp('the phasor diagram cannot be plotted')
