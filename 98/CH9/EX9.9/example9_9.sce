//Chapter 9
//Example 9_9
//Page 218

clear;clc;

r=5.3;
dab=8;
dbc=dab;
dcad=dab;
dadbd=dab;
dbdcd=dab;

gmr=r*0.7788/100;

Ds1=(gmr*3*dab*3*dab*gmr)^(1/4);
Ds2=Ds1;
Ds3=Ds1;

Ds=(Ds1*Ds2*Ds3)^(1/3);

DAB=(dab*4*dab*2*dab*dab)^(1/4);
DCA=(2*dab*1*dab*5*dab*2*dab)^(1/4);
DBC=DAB;

Dm=(DAB*DBC*DCA)^(1/3);

l_ph_m=1e-7*2*log(Dm/Ds);

printf("GMR of conductor = %.4f cm \n\n", gmr);

printf("Ds1 = %.3f m \n", Ds1);
printf("Ds2 = %.3f m \n", Ds2);
printf("Ds3 = %.3f m \n", Ds3);
printf("Equivalent self GMD of one phase = %.3f m \n\n", Ds);

printf("DAB = %.3f m \n", DAB);
printf("DBC = %.3f m \n", DBC);
printf("DCA = %.3f m \n", DCA);
printf("Equivalent mutual GMD = %.3f m \n\n", Dm);

printf("Inductance/phase/m = %.3f*10^-7 mH \n\n", l_ph_m*1e7);

