//5.4
clc;
To=1/2000;
T=1/50;
//Rn=1/(1+n^2*(To/T)^2)
R1=1/(1+1^2*(To/T)^2);
R3=1/(1+3^2*(To/T)^2);
R5=1/(1+5^2*(To/T)^2);
R7=1/(1+7^2*(To/T)^2);
R11=1/(1+11^2*(To/T)^2);
R13=1/(1+13^2*(To/T)^2);
PE3=(R3-1/1)*100;
printf("Percentage error for the production of 3rd harmonics=%.2f",PE3)
PE5=(R5-1/1)*100;
printf("\nPercentage error for the production of 5th harmonics=%.2f",PE5)
PE7=(R7-1/1)*100;
printf("\nPercentage error for the production of 7th harmonics=%.2f",PE7)
PE11=(R11-1/1)*100;
printf("\nPercentage error for the production of 11th harmonics=%.2f",PE11)
PE13=(R13-1/1)*100;
printf("\nPercentage error for the production of 13th harmonics=%.2f",PE13)
//displacement of nth harmonic alpha=atan2*n/((T/To)-n^2*(To/T))
alpha_1=atand(2*1/((T/To)-(1^2*(To/T))));
alpha_13=(atand(2*13/((T/To)-(13^2*(To/T)))));
alpha_1_equivalent_13=13*alpha_1;
phase_displacement_13=alpha_13-alpha_1_equivalent_13;
printf("\n Displacement of 13th harmonic=%.2f degree",phase_displacement_13)