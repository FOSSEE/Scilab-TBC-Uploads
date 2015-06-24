//4.14
clc;
Motor_output=300*735.5/1000;
efficiency=0.9;
Motor_input=Motor_output/efficiency;
Vdc=800;
Rated_current=Motor_input*1000/800;
R=0.1;
L=100*10^-3;
T=1/400;
emf=Vdc-Rated_current*0.1;
Duty_cycle=0.2;
emf_n=Duty_cycle*Vdc-Rated_current*0.1;
N=900/(emf/emf_n);
printf("\nSpeed of motor = %.2f rpm", N)
dia=(Vdc-Duty_cycle*Vdc)/L*Duty_cycle*T;
printf("\nCurrent swing = %.1f A", dia)