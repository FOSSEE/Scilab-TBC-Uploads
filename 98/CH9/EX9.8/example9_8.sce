//Chapter 9
//Example 9_8
//Page 217

clear;clc;

r=0.75;

//According to the figure in the text book
dab=3;
dbc=3;
dacd=4;
dbbd=5.5;
dcad=4;

dca=dab+dbc;

gmr=r*0.7788;
Daa=gmr;
Dadad=gmr;
Dab=sqrt(dab^2+r^2);
Dabd=sqrt(dab^2+(dacd+r)^2);
Daad=sqrt((dab+dbc)^2+dacd^2);
Dada=Daad;

Ds1=(Daa*Daad*Dada*Dadad)^(1/4)/10;
Ds2=(Daa*dbbd*Daa*dbbd)^(1/4)/10;
Ds3=Ds1;

Ds=(Ds1*Ds2*Ds3)^(1/3);

DAB=(Dab*Dabd*Dabd*Dab)^(1/4);
DBC=DAB;
DCA=(dca*dacd*dacd*dca)^(1/4);

Dm=(DAB*DBC*DCA)^(1/3);

l_ph_m=1e-7*2*log(Dm/Ds);

printf("GMR of conductor = %.3f cm \n\n", gmr);
printf("Distance a to b = %.2f m \n", Dab);
printf("Distance a to b-dash = %.2f m \n", Dabd);
printf("Distance a to a-dash = %.2f m \n\n", Daad);

printf("Ds1 = %.3f m \n", Ds1);
printf("Ds2 = %.3f m \n", Ds2);
printf("Ds3 = %.3f m \n", Ds3);
printf("Equivalent self GMD of one phase = %.3f m \n\n", Ds);

printf("DAB = %.3f m \n", DAB);
printf("DBC = %.3f m \n", DBC);
printf("DCA = %.3f m \n", DCA);
printf("Equivalent mutual GMD = %.3f m \n\n", Dm);

printf("Inductance/phase/m = %.3f*10^-3 mH \n\n", l_ph_m/10*1e7);
printf("Inductance/phase/km = %.3f mH \n\n", l_ph_m/10*1e7);

