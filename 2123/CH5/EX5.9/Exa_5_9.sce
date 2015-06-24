//Example No. 5.9
clc;
clear;
close;
format('v',6);

//Given Data : 
E1=200;//V
E2=300;//V
E3=400;//V
E4=500;//V
E5=600;//V
E6=700;//V
Ia1=20;//A
Ia2=30;//A
Ia3=40;//A
Ia4=50;//A
Ia5=60;//A
Ia6=70;//A
Rt=0.6;//ohm
Tload=600;//N-m
omega_m=Tload*2*%pi/60;//rad/s
Kefi1=E1/omega_m;
Kefi2=E2/omega_m;
Kefi3=E3/omega_m;
Kefi4=E4/omega_m;
Kefi5=E5/omega_m;
Kefi6=E6/omega_m;
T1=E1/omega_m*Ia1;//N-m
T2=E2/omega_m*Ia2;//N-m
T3=E3/omega_m*Ia3;//N-m
T4=E4/omega_m*Ia4;//N-m
T5=E5/omega_m*Ia5;//N-m
T6=E6/omega_m*Ia6;//N-m
subplot(1,2,1);
plot([Ia1 Ia2 Ia3 Ia4 Ia5 Ia6],[Kefi1 Kefi2 Kefi3 Kefi4 Kefi5 Kefi6])
title('Ia Vs Kefi');
xlabel("Ia(A)");
ylabel("Kefi");
subplot(1,2,2);
plot([Ia1 Ia2 Ia3 Ia4 Ia5 Ia6],[T1 T2 T3 T4 T5 T6])
title('Ia Vs T');
xlabel("Ia(A)");
ylabel("T(N-m)");
//From the graph : 
T=600;//N-m
Ia=63;//A
Kefi=9.8;
E=Kefi*omega_m;//V
R=E/Ia;//ohm
Rdb=R-Rt
disp(Rdb,"Resistance for dynamic braking in ohm : ");
