clc;
clear;
printf("\t\t\tChapter11_example2\n\n\n");
// Calculation of the value of the solid angle subtended by surfaces dA2 with respect to dA1 (b)  the rate at which radiation emitted by dA1 is intercepted by dA2 (c)  the irradiation associated with dA2
printf("\t\t\tSolution to Part (a)\n");
// solid angle is calculate using the equation dw=dA*cos(Beta)/r^2
// The angle Beta is 0 because the surface normal of dA2 is directed at dA1
dA2=0.02*0.02;
Beta=0;
r=1;
dw2_1=dA2*cos(Beta)/r^2;
printf("\nThe solid angle subtended by area dA2 with respect to dA1 is %.2e sr",dw2_1);
printf("\n\n\t\t\tSolution to Part (b)\n");
dA1=dA2;
theta=%pi*30/180;
I_theta=1000;// The intensity of radiation leaving dA1 in any direction is 1 000 W/(m^2.sr
dq1_2=I_theta*dA1*cos(theta)*dw2_1;
printf("\nThe rate at which radiation emitted by dA1 is intercepted by dA2 is %.2e W",dq1_2);
printf("\n\n\t\t\tSolution to Part (c)\n");
// The irradiation associated with dA2 can be found by dividing the incident radiation by the receiver area
dQ1_2=dq1_2/dA2;
printf("\nThe irradiation associated with dA2 is %.2e W/sq.m",dQ1_2);
