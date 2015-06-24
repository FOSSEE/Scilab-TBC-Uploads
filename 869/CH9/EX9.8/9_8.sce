clc
alpha=11.2*10^(-6) //in/in/F
E=15*10^6 //psi
L=60 //in
deltaT1=0.01 //in
T2=50 //F
deltaT=deltaT1/(alpha*L)
printf("The temperature increase necessary to cause free end to touch B=%f F",deltaT)
disp("From the geometry of the figure")
sigma=(alpha*L*T2-deltaT1)*E/L
printf("Stress in the rod=%d psi",sigma+1)
