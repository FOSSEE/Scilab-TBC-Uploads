//Calculate circuit constants and efficiency //Chapter 3
//Example 3.21
//page 227
clear;
clc;
disp("Example 3.21")
V2=500;                //secondary voltage in volts
V1=250;              //primary voltage in short circuit test in volts
I0=1;                //current in short circuit test in amperes
P=80;                //core loss in watt
Psc=100;                //power in short circuit test in watts
Vsc=20;                 //short circuit voltage in volts   
Isc=12;                 //short circuit current in amperes
phi0=acosd(P/(V1*I0));
printf("From open circuit test , cos(phi0)=%f",cos(phi0));
Ic=I0*cosd(phi0);
printf("\nLoss component of no-load current,Ic=%fA",Ic)
Im=sqrt(I0^2-Ic^2);
printf("\nMagnetising current,Im=%fA",Im);
Rm=V1/Ic;
Xm=V1/Im;
Re=Psc/(Isc^2);
Ze=Vsc/Isc;
Xe=sqrt(Ze^2-Re^2);
printf("\n\nEquvalent resistance referred to secondary=%fohms",Re);
printf("\nEquvalent reactance referred to secondary=%fohms",Xe);
printf("\nEquvalent impedance referred to secondary=%fohms",Ze);
K=V2/V1;                            //turns ratio
printf("\n\nEquvalent resistance referred to primary=%fohms",(Re/K^2));
printf("\nEquvalent reactance referred to primary=%fohms",(Xe/K^2));
printf("\nEquvalent impedance referred to primary=%fohms",(Ze/K^2));
V=500;                        //output in volts
I=10;                         //output current in amperes
phi=acosd(0.80);
effi=(V*I*cosd(phi)*100)/((V*I*cosd(phi))+P+((I)^2*Re));
printf("\nEffiency=%fpercent",effi);