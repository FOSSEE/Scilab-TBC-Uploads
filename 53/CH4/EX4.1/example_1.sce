//input resistance in Kohm
Rin=1;
//voltage gain
Av=1000;
//feedback fraction 
Bv=0.1;
//Let input resistance after feedback is applied be Zif
AB=Av*Bv;
Zif=Rin*(1+AB);//Zif in Kohms
printf("RESULTS:\n");
printf("Input resistance after feedback is applied Zif=%dKohms",Zif);
