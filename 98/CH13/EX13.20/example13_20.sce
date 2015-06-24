//Chapter 13
//Example 13_20
//Page 331

clear;clc;

l=1000;
r=0.1;
va=240;
vb=240;
i_load=0.5;
ic=120;
id=60;
ie=100;
i_f=40;
//solving for current
I=166;
printf("(i) I = %d A \n\n", I);
Ia=I+i_load*400;
Ib=154+i_load*(l-400);
printf("(ii) Current supplied by A = %d A \n", Ia);
printf("     Current supplied by B = %d A \n", Ib);
//drop due to concentrated loading
cld=I*200/10000+46*200/10000;
//drop due to distributed loading
dld=i_load*400^2/2/10000;
vd=va-cld-dld;
printf("Drop due to concentrated loading = %.2f V \n", cld);
printf("Drop due to distributed loading = %.2f V \n", dld);
printf("Vd = %.2f V \n", vd);




  