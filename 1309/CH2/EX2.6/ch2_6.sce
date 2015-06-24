clc;
clear;
printf("\t\t\tChapter2_example6\n\n\n");
// Determination of the overall heat transfer coefficient
k12=24.8; // thermal conductivity of 1C steel in BTU/(hr.ft.degree Rankine)from appendix table B2 
k23=.023; // // thermal conductivity of glass wool insulation in BTU/(hr.ft.degree Rankine)from appendix table B3 
// Specifications of 6 nominal, schedule 40 pipe (no schedule was specified, so the standard is assumed) from appendix table F1 are as follows
D2=6.625/12; // outer diameter in ft
D1=0.5054; // inner diameter in ft
printf("\nOuter diameter is %.3f ft",D2);
printf("\nInner diameter is %.4f ft",D1);
t=2/12; // wall thickness of insulation in ft
D3=D2+t;
printf("\nDiameter including thickness is %.5f ft",D3);
hc1=12; // convection coefficient between the air and the pipe wall in BTU/(hr. sq.ft.degree Rankine).
hc2=1.5; // convection coefficient between the glass wool and the ambient air in  BTU/(hr. sq.ft.degree Rankine).
U=1/((1/hc1)+(D1*log(D2/D1)/k12)+(D1*log(D3/D2)/k23)+(D1/(hc2*D3)));
printf("\nOverall heat transfer coefficient is %.3f  BTU/(hr. sq.ft.degree Fahrenheit)",U);
