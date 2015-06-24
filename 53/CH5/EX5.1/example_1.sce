//caption:shunt voltage feedback circuit
//example5.1
printf("Given:");
printf("R=10 Kohms,\nR1=20Kohms,\nR2=5Kohms,\nhfe=100Kohms,hie=1Kohm,\nRc=1Kohm");
R=10000;
R1=20000;//in ohms
R2=5000;
Rc=1000;
hfe=100;
Bg=-1/R;
hie=1000;
printf("Therefore Bg=%1.5f\n",Bg);
printf("RT=input current coupling factor*-hfe*effective cdollector resistance\n");
printf("RT=(R1||R2||R)/((R1||R2||R)+hfe)*hfe*(Rc||R)\n");
a=(R1*R2*R)/((R1*R)+(R*R2)+(R1*R2));
b=(Rc*R)/(Rc+R);
RT=(-hfe*a*b)/(a+hie)/1000;
printf("RT=%2.1fKohms\n",RT);
c=1+(RT*1000*Bg);
d=(1/R1)+(1/R2)+(1/R)+(1/hie);
Zi=1/d;
Zo=b;
RTf=RT/c;
rif=Zi/c;
rof=Zo/c;
printf("RESULTS:\n");
printf("RT=%2.1fKohms\n",RT);
printf("Zi=%3.1fohms\n",Zi);
printf("Zo=%dohms\n",Zo);
printf("Closed-loop gain,RTf=%1.2fKohms\n",RTf);
printf("Closed-loop input resistance,rif=%dohms\n",rif);
printf("Closed-loop output resistance,rof=%dohms\n",rof);