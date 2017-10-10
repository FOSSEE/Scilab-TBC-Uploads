//Calculate the Rate constant for Forward abd Reverse reaction 

//Example 12.4

clc;

clear

Tau=36*10^-6;  //The relaxation time for the system to reach the new equilibrium in s

C1=1.0*10^-7; //Concentration of the Hydrogen ion in M

C2=1.0*10^-7; //Concentration of the Hydroxyl ion in M (C1=C2)

C3=55.5;  //Concentration of the Water in M 

Kf=C3/((Tau)*((C1+C2)*(C3)+(C1*C2)));//Rate constant for Forward reaction in M^-1 s^-1(Kf*C1*C2=Kr*C3)(Tau=1/(Kf*(C1+C2)+Kr)

printf("Rate constant for Forward reaction = %.1f*10^11 M^-1 s^-1",Kf*10^-11);

K=(C1*C2)/C3; //Equilibrium Constant for the reaction in M (Hydrogen ion +Hydroxyl ion=Water )

Kr=Kf*K; //Rate constant for Reverse reaction in s^-1

printf("\n Rate constant for Reverse reaction = %.1f*10^-5 s^-1 ",Kr*10^5);
