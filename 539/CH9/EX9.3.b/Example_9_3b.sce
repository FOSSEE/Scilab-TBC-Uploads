//Computation of Phase Compositions

clear;
clc;

printf("\tExample 9.3\n");

C1=40;  // Overall alloy composition
Cb=98;
Ca=10;

Wa=(Cb-C1)/(Cb-Ca);
Wb=(C1-Ca)/(Cb-Ca);

printf("\n\tPart B");
d_Sn=7.24; // in g/cm^3  density of tin
d_Pb=11.23;  // in g/cm^3  density of lead

Ca_Sn=10;
Ca_Pb=90;

Cb_Sn=98;
Cb_Pb=2;

d_a=100/((Ca_Sn/d_Sn)+(Ca_Pb/d_Pb));
d_b=100/((Cb_Sn/d_Sn)+(Cb_Pb/d_Pb));

printf("\nDensity of alpha phase is : %.2f g/cm^3",d_a);
printf("\nDensity of beta phase is : %.2f g/cm^3",d_b);

Va=Wa/(d_a*((Wa/d_a)+(Wb/d_b)));
Vb=Wb/(d_b*((Wa/d_a)+(Wb/d_b)));

printf("\n\nVolume fraction of alpha phase : %.2f",Va);
printf("\nVolume fraction of beta phase : %.2f",Vb);

//End