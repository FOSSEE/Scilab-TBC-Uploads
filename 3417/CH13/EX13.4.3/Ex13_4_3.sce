//Ex.13.4.3;maximum efficiency,no. of thermocouple in series,open ckt voltage,heat i/p and reject at full load.

kA=0.02;//unit=watt/cm degree kelvin
kB=0.03;//unit=watt/cm degree kelvin
pA=0.01;//unit=ohm cm
pB=0.012;//unit=ohm cm
TH=1500;//unit=degree kelvin
TC=1000;//unit=degree kelvin
AA=43.5;//unit=cm^2
AB=48.6;//unit=cm^2
LA=0.49;//unit=cm
LB=0.49;//unit=cm
I=20*48.6;//Current density in the element limited to,I=20 amp/cm^2
output=100;//unit=kW
//alpha_SAB at 1250 degree kelvin=0.0012 volt/degree kelvin=alpha_SA-alpha_SB
alpha_SAB=0.0012;//unit=volt/degree kelvin
//let
b=(pA*kA);
c=(pB*kB);
A=sqrt(b);
B=sqrt(c);
C=(A+B);
//figure of merit
Z=(alpha_SAB/C)^2;
printf(" Z=%f degree k^-1",Z);
M=(1+((Z/2)*(TH+TC)))^0.5;
printf("\n M=%f",M);
//let
aa=((TH-TC)/TH);
bb=(M-1)/(M+(TC/TH));
//1] MAx. efficiency of a thermoelectric converter is given by n_max=((TH-TC)/TH)*[(M-1)/(M+(TC/TH))]*100;
n_max=aa*bb*100;
printf("\n Maximum efficiency n_max=%f persent",n_max);
//2] No. of thermocouple in series
V=alpha_SAB*(TH-TC);
printf("\n V=%f volt",V);
R=((pA*LA)/AA)+((pB*LB)/AB);//since  R=RA+RB=((pA*LA)/AA)+((pB*LB)/AB);
printf("\n R=%f ohm",R);
VL=V-(R*I);
printf("\n VL=%f volt",VL);
//NTCS=total voltage required/voltage required by one couple
NTCS=115/VL;
printf("\n No. of thermocouple in series=%f",NTCS);
//3] Open circuit voltage
OCV=V*309;
printf("\n Open circuit voltage=%f volt",OCV)
//4] Heat input and reject at full load.
//Heat input at full load.=output/efficency=100/0.091
HIFL=output/(n_max/100);
printf("\n Heat input at full load=%f kW",HIFL)
// Heat reject at full load. =Heat input-Work output
HRFL=HIFL-output;
printf("\n Heat reject at full load=%f kW",HRFL)



//The value of "pB" is misprinted
//The values are taken in the text book is approximately equal to calculated values
