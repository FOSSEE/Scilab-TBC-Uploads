//Chapter 17
//Example 17_9
//Page 411

clear;clc;

gmva=10;
gx=30;
rmva=10;
rx=10;
tmva=5;
tx=5;

base=input("Enter base MVA: ");

pergx=base*gx/gmva;
printf("%% reactance of each generator = %.0f %% \n\n", pergx);

perrx=base*rx/rmva;
printf("%% reactance of each generator = %.0f %% \n\n", perrx);

pertx=base*tx/tmva;
printf("%% reactance of each generator = %.0f %% \n\n", pertx);

xbc=(pergx+perrx)/2+pertx;
tx=xbc*pergx/(xbc+pergx)+pertx;
sc=base*100/tx;
printf("Total %% reactance = %.2f %% \n\n", tx);
printf("S.C MVA = %.2f \n\n", sc);

