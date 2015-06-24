// Three-Phase Circuits :example 6.19 :(pg 6.21 & 6.22)
VL=400;
IL=5;
Vph=(VL/sqrt(3));
Zph=(Vph/IL);
Iph=(IL/sqrt(3));
Vph1=(Iph*Zph);
printf("\nVl=400 V \nIL=5 A");
//For a star-connected load
printf("\nVph=VL/sqrt(3) =%.2f V",Vph);
printf("\nIph=IL=%.f A",IL);
printf("\nZph=Rph=Vph/Iph =%.2f Ohm",Zph);
//For a delta connected load
printf("\nIL=5 A \nRph=%.2f Ohm",Zph);
printf("\nIph=IL/sqrt(3)=%.2f A",Iph);
printf("\nVph=Iph*Rph \n=%.2f V",Vph1);
//Voltage needed is 1/3 of the star value













