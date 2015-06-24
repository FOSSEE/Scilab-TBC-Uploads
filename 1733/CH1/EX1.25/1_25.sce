//1.25
clc;
L=0.1*10^-3;
Vc=100;
C=10*10^-6;
IL=10;
t_off=Vc*C/IL*10^6;
printf("Commutation time= %.0f us",t_off)
disp('The commutation time  of the thyristor is more than the turn off time of the main thyristor i.e. 25us and is thus  sufficient to commutate the main thyristor')
IC_peak= Vc*(C/L)^0.5;
printf("Peak capacitor current= %.2f A",IC_peak)
disp('The maximum current rating of the thyristor should be more than 31.62A')
