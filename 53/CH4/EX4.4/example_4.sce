//caption:series voltage feedback circuit
//given in ohms
R1=10000;
R2=2000;
Rc=2000;
//transistor parameters in Ohms
hie=1000;//in ohms
hfe=100;
//loop gain Avf
Avf1=(R1+R2)/R2;//there is corrected equation.in text book,it needs a correction
Bv=1/Avf1;
//forward voltage gain Av
Av=(0.5)*hfe*Rc/hie;
//feedback factor F
F=(1+Av*Bv);
//closed loop gain Avf
Avf=Av/F;
//input resistance ri
ri=2*hie;
//input resistance after feed back rif
rif=ri*F;
//output resistance ro
ro=Rc;
//output resistance after feedback rof
rof=ro/F;
printf("RESULTS\n");
printf("(i)voltage amplification Avf=%1.2f, This accords with the previous value of Avf=%d\n",Avf,Avf1);
printf("(ii)input resistance after feed back rif=%2.1fKohms\n",rif/1000);//to convert ohms to Kohms
printf("(iii)input resistance after feed back rof=%dKohms\n",rof);//to convert ohms to Kohms

