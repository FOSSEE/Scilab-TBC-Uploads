//Chapter 17
//Example 17_15
//Page 418

clear;clc;

kv=11;
mva=10;
xa=12;
mvar=10;
xr=24;
mvat=6;
xt=3;
ts=66;

base=input("Enter base MVA: ");
per_xa=base*xa/mva;
per_xr=base*xr/mvar;
per_xt=base*xt/mvat;

//From the figure, the total reactance from generator to fault point is 

l1=per_xa/2+per_xr;
l2=per_xa/2;
tx=l1*l2/(l1+l2)+per_xt;

fmva=base*100/tx;
isc=fmva*1e6/sqrt(3)/ts/1000;

printf("%% reactance of the alternator = %.2f %% \n\n", per_xa);
printf("%% reactance of the transformer = %.2f %% \n\n", per_xt);
printf("%% reactance of the reactor = %.2f %% \n\n", per_xr);

printf("Total %% reactance upto fault point = %.2f %% \n\n", tx);
printf("Fault MVA = %.2f MVA \n\n", fmva);
printf("Short circuit current fed by the alternator to the fault = %.2f A \n\n", isc);

