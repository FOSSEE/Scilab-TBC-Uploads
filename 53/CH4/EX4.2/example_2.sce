//input impedance in ohms
Rin=10000;
//Trans-resistance in ohms
Rt=(10)^(5);
//feedback fraction Bg
Bg=(10)^(-3);
AB=Rt*Bg;
//input impedance after feedback is applied Zif in ohms
Zif=Rin/(1+AB);
printf("RESULTS:\n");
printf("Input impedance after feedback applied is Zif=%d Ohms",Zif);