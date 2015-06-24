clear;
clc;
Ya=40*(10^-3);Yb=50*(10^-3);Yc=20*(10^-3);
Za=1/Ya;Zb=1/Yb;Zc=1/Yc;
Z1=Zb*Zc/(Za+Zb+Zc);
Z2=Za*Zc/(Za+Zb+Zc);
Z3=Zb*Za/(Za+Zb+Zc);
Zi1=sqrt(((Z3+Z1)/(Z3+Z2))*((Z1*Z2)+(Z2*Z3)+(Z1*Z3)));
printf("(a)Zi1 = %f ohms\n",round(Zi1));
Zi2=sqrt(((Z3+Z2)/(Z3+Z1))*((Z1*Z2)+(Z2*Z3)+(Z1*Z3)));
printf("   Zi2 = %f ohms\n",round(Zi2*100)/100);
Zt1=(1/2)*((Z1-Z2)+(sqrt(((Z1-Z2)^2)+(4*((Z1*Z2)+(Z2*Z3)+(Z1*Z3))))));
printf("   Zt1 = %f ohms\n",fix(Zt1*100)/100);
Zt2=(1/2)*((Z2-Z1)+(sqrt(((Z1-Z2)^2)+(4*((Z1*Z2)+(Z2*Z3)+(Z1*Z3))))));
printf("   Zt2 = %f ohms\n\n",fix(Zt2*100)/100);
Zb1=Za*Zb/(Za+Zb);
Z11=Zb*Zc/(Zb+Zc+Zb1);
Z21=Zb1*Zc/(Zb+Zc+Zb1);
Z31=Zb1*Zb/(Zb+Zc+Zb1);
Zr=Zc+Z21;
Zs=Z21+Zb;
Z12=Z31*Zs/(Z31+Zr+Za);
Z22=Zr*Za/(Z31+Zr+Za);
Z32=Z31*Za/(Z31+Zr+Za);
Z121=Z12+Z11;
printf("  The desired T network will be as:\n");
printf("  Z1 = %f ohms\n",round(Z121*100)/100);
printf("  Z2 = %f ohms\n",fix(Z22*10)/10);
printf("  Z3 = %f ohms\n",round(Z32*10^4)/10^4);



