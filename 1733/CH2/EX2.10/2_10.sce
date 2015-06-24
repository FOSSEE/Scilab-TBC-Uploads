//2.10
clc;
Vdc=100;
Vm=(Vdc+1.7)*%pi/(2*cosd(30));
Vrms_sec=Vm/2^0.5;
Vrms_pri=230;
Turn_ratio=Vrms_pri/Vrms_sec;
printf("\nTurn Ratio = %.2f ", Turn_ratio)
Ip=15;
Irms_sec=(Ip^2/2)^0.5;
Trans_rating=2*Vrms_sec*Irms_sec;
printf("\nTransformer rating = %.2f VA", Trans_rating)
PIV=2*Vm;
printf("\nPIV = %.2f V", PIV)
printf("\nRMS value of thyristor current = %.2f A", Irms_sec)
