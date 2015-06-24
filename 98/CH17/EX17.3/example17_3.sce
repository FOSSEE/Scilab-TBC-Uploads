//Chapter 17
//Example 17_3
//Page 404

clear;clc;

kv=10;
r=1;
x=4;
mvaa=10;
mvat=5;
xt=5;
mvabb=10;
xa=10;

base=input("Enter base kVA:  ");

per_xa=base*xa/(mvaa*1000);
per_xt=base*xt/(mvat*1000);

per_xl=x*mvabb*1000/10/kv^2;
per_rl=r*mvabb*1000/10/kv^2;

tx=per_xa+per_xt+per_xl;
tr=per_rl;
per_z=sqrt(tr^2+tx^2);
sckva1=mvabb*1000*100/per_z;

txgf=per_xa+per_xt;
sckva2=mvaa*1000*100/txgf;

printf("%% reactance of alternator = %.2f %% \n\n", per_xa);
printf("%% reactance of transformer = %.2f %% \n\n", per_xt);
printf("%% reactance of transmission line = %.2f %% \n\n", per_xl);
printf("%% resistance of transmission line = %.2f %% \n\n", per_rl);

printf("(i) Total %% reactance = %.2f %% \n\n", tx);
printf("    Total %% resistance = %.2f %% \n\n", tr);
printf("    %% impedance from generator nuetral upto fault point = %.2f %% \n\n", per_z);
printf("    Short circuit kva = %.0f kVA \n\n", sckva1);

printf("(ii) %% impedance from generator nuetral upto fault point = %.2f %% \n\n", txgf);
printf("     Short circuit kva = %.0f kVA \n\n", sckva2);







