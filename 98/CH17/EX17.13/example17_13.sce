//Chapter 17
//Example 17_13
//Page 416

clear;clc;

mva=[15 15 8];
x=[12 12 10];
mvat=5;
xt=4;
mvar=10;
xr=15;

base=input("Enter base mva: ");
for i=1:3
perx(i)=base*x(i)/mva(i);
printf("%% X(%i) = %.2f %% \n\n", i, perx(i));
end;
perxt=base*xt/mvat;
perxr=base*xr/mvar;
printf("%% Xt = %.2f %% \n\n", perxt);
printf("%% Xr = %.2f %% \n\n", perxr);

xabt=perx(1)/2+perxt;
xcr=perx(3)+perxr;
tx=xabt*xcr/(xabt+xcr);
f=base*100/tx;

printf("Total %% reactance = %.2f %% \n\n", tx);
printf("Fault MVA = %.2f MVA \n\n", f);
