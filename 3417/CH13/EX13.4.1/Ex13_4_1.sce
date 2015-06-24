//Ex13.4.1.;Determine the efficiency of the thermoelectric generator.what will be its carnot efficiency

TH=600;//degree k;//temperature of the hot reservior of source
TC=300;//degree k;//temperature of the sink
Z=2*(10^-3);//1/degree k;//Figure of merit for the material
M_optimum=(1+((Z/2)*(TH+TC)))^0.5;
printf(" M_optimum=%f",M_optimum);
//Efficiency of the thermoelectric generator is n=(((TH-TC)/TH)*((M_optimum-1)/(M_optimum+(TC/TH)))*100;
a=((TH-TC)/TH);
b=(M_optimum-1)/(M_optimum+(TC/TH));
n=a*b*100;
printf("\n Efficiency of the thermoelectric generator is n=%f persent",n);
//where as efficiency of the carnot cycle (reversible) nc=((TH-TC)/TH)*100
nc=a*100;
printf("\n Efficiency of the carnot cycle (reversible) nc=%f persent",nc);
