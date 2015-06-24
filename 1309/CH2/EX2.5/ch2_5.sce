clc;
clear;
printf("\t\t\tChapter2_example5\n\n\n");
// determination of the heat gain per unit length
k1=231; // thermal conductivity of copper in BTU/(hr.ft.degree Rankine)from appendix table B1 
k2=0.02; // thermal conductivity of insuLtion in BTU/(hr.ft.degree Rankine)
// Specifications of 1 standard type M copper tubing from appendix table F2 are as follows
D2=1.125/12; // outer diameter in ft
D1=0.08792; // inner diameter in ft
R2=D2/2;// outer radius
printf("\nOuter radius is %.4f ft",R2);
R1=D1/2; // inner radius
printf("\nOuter radius is %.3f ft",R1);
t=0.5/12; // wall thickness of insulation in ft
R3=R2+t;
printf("\nRadius including thickness is %.4f ft",R3);
LRk1=(log(R2/R1))/(2*3.14*k1); // product of length and copper layer resistance
printf("\nProduct of length and copper layer resistance is: %.1e",LRk1);
LRk2=(log(R3/R2))/(2*3.14*k2); // product of length and insulation layer resistance
printf("\nProduct of length and insulation layer resistance is: %.2f",LRk2);
T1=40; // temperature of inside wall of tubing in degree fahrenheit
T3=70; // temperature of surface temperature of insulation degree fahrenheit
q_per_L=(T1-T3)/(LRk1+LRk2); // heat transferred per unit length in BTU/(hr.ft)
printf("\nThe heat transferred per unit length is %.2f BTU/(hr.ft)",q_per_L);
