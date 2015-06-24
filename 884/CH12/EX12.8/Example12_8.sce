//computation of freezing point depression and boiling point elevation

clear;
clc;

printf("\t Example 12.8\n");

mH2O=2.505;//mass of H2O, kg
mEG=651;//mass of EG, g
EG=62.07;//mol mass of EG, g
n=mEG/EG;//moles of EG
m=n/mH2O;//molality of EG
Kf=1.86;//molal freezing point depression constant, C/m
deltaTf=Kf*m;//depression in freezing point, C
Kb=0.52;//molal boiling point elevation constant, C/m
deltaTb=Kb*m;//elevation in boiling point, C

printf("\t the depression in freezing point and elevation in boiling point are : %4.2f C and %4.1f C respectively\n",deltaTf,deltaTb);

//End
