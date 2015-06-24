//Exa 3.25
clc;
clear;
close;
format('v',7);

//Given Data :
T1=1500;//K
T2=450;//K
T3=150;//K
Q3=250;//KJ
COP_CR=T3/(T2-T3);
disp(COP_CR,"COP of cold refrigerator is : ");
COP_HR=T2/(T1-T2);
disp(COP_HR,"COP of hotter refrigerator is : ");
COP=T3/(T1-T3);
disp(COP,"COP of composite system is : ");
