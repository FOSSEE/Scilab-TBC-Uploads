//Trans-resistance Rtf in Kohms
Rtf=(-10);
//given
R1=20;//in Kohms
R2=5;
Rc=1;
//transistor parameters in kohms
hie=1;
hfe=0.1;
//feedback fraction Bg
Bg=1/Rtf;
R=(-Rtf);
//input resistance ri in ohms
a=(R1*R2*hie)/((R1*R2)+(R1*hie)+(R2*hie));
ri=(a);
//Output resistance in ohms
ro=1000*Rc;
b=(R1*R2)/(R1+R2);
//let
i1=1;
ib=i1*b/(b+hie);
ic=hfe*ib;
//output voltage Vo
Vo=(-Rc*ic);
Rt=Vo/i1*1000;
//Feedback factor F
F=1+(Rt*Bg);
//closed loop gain Rtf
Rtf=Rt/F;
//closed loop input resistance rif
rif=ri/F;
//closed loop output resistance rof
rof=ro/F;
printf("RESULTS\n");
printf("closed-loop gain,Rtf=%1.2fKohms\n",Rtf);
printf("closed-loop input resistance rif=%2.0f Ohms\n",1000*rif);//in ohms
printf("closed-loop output resistance rof=%d Ohms",rof);