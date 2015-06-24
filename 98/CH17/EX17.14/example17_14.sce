//Chapter 17
//Example 17_14
//Page 417

clear;clc;

mva=10;
kv=6.6;
xa=20;
mvat=5;
kvpt=6.6;
kvst=33;
xt=10;
r=0.2;
x=1;
ll=50;

base=input("Enter base MVA: ");

per_xa=base*xa/mva;
per_xt=base*xt/mvat;
per_xl=mva*1000*ll*x/10/kvst^2;
per_rl=mva*1000*ll*r/10/kvst^2;

tx=per_xl+per_xa+per_xt;
tr=per_rl;

per_z=sqrt(tx^2+tr^2);
scmva=base*100/per_z;

isc=scmva*1e6/sqrt(3)/kv/1000;

printf("%% reactance of the alternator = %.2f %% \n\n", per_xa);
printf("%% reactance of the transformer = %.2f %% \n\n", per_xt);
printf("%% reactance of the transmission line = %.2f %% \n\n", per_xl);
printf("%% resistance of the transmission line = %.2f %% \n\n", per_rl);
printf("Total %% reactance upto fault point = %.2f %% \n\n", tx);
printf("Total %% resistance upto fault point = %.2f %% \n\n", tr);
printf("Total %% impedance upto fault point = %.2f %% \n\n", per_z);
printf("Short circuit MVA = %.2f MVA \n\n", scmva);
printf("Short circuit current fed by the alternator to the fault = %.2f A \n\n", isc);


