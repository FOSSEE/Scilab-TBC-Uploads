//caption:amplifier parameters
//given values of resistances
R1=10000;//in ohms
R2=2000;//in ohms
Rc=2000;//in ohms
hie=1000;//in ohms
hfe=100;
ri1=2*hie;
//unloaded feed-backfraction Bv
Bv=R2/(R1+R2);
disp("Av=ri1/(ri1+(R1||R2))*(Vo/Via)");
disp('Av=(1*hfe/2)*(ri1/(ri1+(R1||R2)))*(Rc||(R1+R2))/hie');
Av=(1*hfe/2)*(ri1/(ri1+(R1*R2/(R1+R2))))*(Rc*(R1+R2)/(Rc+R1+R2))/hie;
C=1+(Av*Bv);
//open-loop input resistance ri
ri=ri1+(R1*R2/(R1+R2));
//open-loop output resistance ro
ro=Rc*(R1+R2)/(Rc+R1+R2);
//closed-loop gain,Avf
disp('closed-loop gain, Avf=Av/C,where C=1+Av*Bv');
Avf=Av/C;
//closed-loop input resistance,rif
disp('closed-loop input resistance, rif=ri*C');
rif=ri*C;
//closed-loop output resistance, rof
disp('closed-loop output resistance, rof=ro/C,where C=1+Av*Bv');
rof=ro/C;
printf("RESULTS:\n");
printf("Closed-loop gain,Avf=%1.2f(previously 5.66)\n",Avf);
printf("Closed-loop input resistance,rif=%2.1f Kohms(previously 35.3Kohms)\n",rif/1000);//divided by 1000 to convert to Kohms
printf("Closed-loop output resistance,rof=%3.0f Ohms(previously 113 ohms)\n",rof);