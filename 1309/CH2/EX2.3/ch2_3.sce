clc;
clear;
printf("\t\t\tChapter2_example3\n\n\n");
// determination of heat transfer rate and overall heat transfer coefficient
k1=24.8; // thermal conductivity of 1C steel in BTU/(hr.ft.degree Rankine)from appendix table B2 
k2=0.02; // thermal conductivity of styrofoam steel in BTU/(hr.ft.degree Rankine)
k3=0.09; // thermal conductivity of fibreglass in BTU/(hr.ft.degree Rankine)
hc1=0.79; // convection coefficient between the air and the vertical steel wall in BTU/(hr.ft^2.degree Rankine)
hc2=150; // the convection coefficient between the ice water and the fiberglass
A=1; // calculation based on per square foot
dx1=0.04/12; // thickness of steel in ft
dx2=0.75/12; // thickness of styrofoam in ft
dx3=0.25/12; // thickness of fiberglass in ft
// Resistances in (degree Fahrenheit.hr)/BTU
disp('Resistances in (degree Fahrenheit.hr)/BTU:');
Rc1=1/(hc1*A); // Resistance from air to sheet metal
printf("\nResistance from air to sheet metal: %.3f degree F.hr/BTU",Rc1);
Rk1=dx1/(k1*A); // Resistance of steel layer
printf("\nResistance of steel layer: %.4f degree F.hr/BTU",Rk1);
Rk2=dx2/(k2*A); // Resistance of styrofoam layer
printf("\nResistance of styrofoam layer: %.3f degree F.hr/BTU",Rk2);
Rk3=dx3/(k3*A); // Resistance of fiberglass layer
printf("\nResistance of fiberglass layer: %.3f degree F.hr/BTU",Rk3);
Rc2=1/(hc2*A); // Resistance from ice water to fiberglass
printf("\nResistance from ice water to fiberglass: %.4f degree F.hr/BTU",Rc2);
U=1/(Rc1+Rk1+Rk2+Rk3+Rc2); // overall heat transfer coefficient in BTU/(hr.ft^2.degree Rankine)
printf("\nThe overall heat transfer coefficient is %.3f BTU/(hr. sq.ft.degree Rankine)",U);
T_inf1=90;// temperature of air in degree F
T_inf2=32; // temperature of mixture of ice and water in degree F
q=U*A*(T_inf1-T_inf2);
printf("\nThe heat transfer rate is %.1f BTU/hr",q);
