//2.18
clc;
Vdc=100;
Vm=(Vdc+2*1.7)*%pi/(2*cosd(30));
Vrms_sec=Vm/2^0.5;
Vrms_pri=230;
Turn_ratio=Vrms_pri/Vrms_sec;
printf("\nTurn Ratio = %.2f ", Turn_ratio)
Irms_sec=15/2^0.5;
Ip=15;
Trans_rating=Vrms_sec*Ip;
printf("\nTransformer rating = %.2f VA", Trans_rating)
PIV=Vm;
printf("\nPIV = %.2f V", PIV)
printf("\nRMS value of thyristor current = %.2f A", Irms_sec)
