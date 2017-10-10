// Exa 4.2

clc;
clear;

// Given data

// Added-subtractor as shown in fig. 4.4(a).
R1=40*10^3; //  Ω
R2=25*10^3; //  Ω
R3=10*10^3; // Ω
R4=20*10^3; // Ω
R5=30*10^3; // Ω
Rf=50*10^3; // Ω
V1=2; // Volts
V2=3; // Volts
V3=4; // Volts
V4=5; // Volts

// Solution

printf('The negative sum is obtained by setting V3=V4=0. Thus,\n ');
 Vo1=-(Rf/R1)*V1-(Rf/R2)*V2;
printf(' Vo1 = %.1f Volts. \n ',Vo1);
printf('\n Now set V1=V2=0 to find the output voltage due to V3 and V4. \n The voltage Vo2 at the positive terminal due to V3 and V4 can be found by using superposition theorem as shown in Fig. 4.4(b) as \n ');

Rllel=( 1/R4 + 1/R5)^-1;
Rllel1=(1/R3+1/R5)^-1;
Vo2= (Rllel/(R3+Rllel))*V3+ (Rllel1/(Rllel1+R4))*V4;
printf(' Vo2 = %.3f Volts. \n ',Vo2 );
printf('\n The output voltage Vo3 due to V3 and V4 now can be determined from the equivalent circuit of Fig. 4.4(c) as \n ');
Rllel2=(1/R1+1/R2)^-1;
Vo3=(1+(Rf/Rllel2))*Vo2;
printf(' Vo3 = %.3f Volts. \n ',Vo3);
printf('\n The total output voltage V0 is given as sum of Vo1 + Vo3.\n ');
Vout=Vo1+Vo3;
printf(' The output voltage = %.3f Volts. \n ',Vout);
printf('\n\n The equivalent circuit at various in between steps are shown in Fig. 4.4(b-c).');
