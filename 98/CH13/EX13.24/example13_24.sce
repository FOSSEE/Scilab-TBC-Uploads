//Chapter 13
//Example 13_24
//Page 336

clear;clc;

va=250;
rab=0.02;
rbc=0.018;
rcd=0.025;
rda=0.02;
ib=150;
ic=300;
id=250;
//interconnector resistance
icr=0.02;

I=(rbc*ib+rcd*(ib+ic)+rda*(ib+ic+id))/(rab+rbc+rcd+rda);
printf("I = %.2f A \n", I);

//from fig(ii)
vab=I*rab;
vbc=186.75*rbc;
vcd=113.25*rcd;
vda=363.25*rda;

vb=va-vab;
vc=vb-vbc;
vd=vc+vcd;

printf("Vab = %.3f V \n", vab);
printf("Vbc = %.3f V \n", vbc);
printf("Vcd = %.3f V \n", vcd);
printf("Vda = %.3f V \n\n", vda);

printf("Vb = %.3f V \n", vb);
printf("Vc = %.3f V \n", vc);
printf("Vd = %.3f V \n\n", vd);

printf("WITH INTERCONNECTOR: \n");
eo=va-vc;
ro=(rab+rbc)*(rab+rcd)/(rab+rbc+rab+rcd);
ith=eo/(ro+rab);
I1=(rbc*ib+rda*ith)/(rab+rbc);

dab=I1*rab;
dbc=53.15*rbc;
dad=244.45*rda;

pb=va-dab;
pc=pb-dbc;
pd=va-dad;

printf("Thevenin voltage = %.3f V \n", eo);
printf("Rac = %.2f ohms \n", ro);
printf("Current in interconnecter = %.2f A \n\n", ith);

printf("I1 = %.2f A \n", I1);
printf("Drop in AB = %.3f V \n", dab);
printf("Drop in BC = %.3f V \n", dbc);
printf("Drop in AD = %.3f V \n\n", dad);

printf("Potential of B = %.3f V \n", pb);
printf("Potential of C = %.3f V \n", pc);
printf("Potential of D = %.3f V \n\n", pd);






