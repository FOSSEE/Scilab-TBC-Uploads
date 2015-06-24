// Exa 3.4
clc;
clear;
close;
format('v',6)
// Given data
i1 = 0;// in A
i2 = 10;// in A
i3 = 20;// in A
i4 = 30;// in A
i5 = 20;//in A
i6 = 10;// in A
n = 6;// unit less
Iav = (i1+i2+i3+i4+i5+i6)/n;// in A
disp(Iav,"The average value in A is");
Irms = sqrt(( (i1^2) + (i2^2) + (i3^2) + (i4^2) + (i5^2) + (i6^2) )/n);// in A
disp(Irms,"The RMS value in A is");
k_f = Irms/Iav;// unit less
disp(k_f,"The form factor is");
Im = 30;// in A
k_p = Im/Irms;// unit less
disp(k_p,"The peak factor is");
