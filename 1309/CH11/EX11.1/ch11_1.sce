clc;
clear;
printf("\t\t\tChapter11_example1\n\n\n");
// Calculation of the value of the solid angle subtended by surfaces dA2 and dA3 with respect to dA1 (b) the intensity of emission from dA, in the direction of the other areas (c) the rate at which radiation emitted by dA, is intercepted by the other areas
printf("\t\t\tSolution to Part (a)\n");
// solid angle is calculate using the equation dw=dA*cos(Beta)/r^2
// Beta is the angle between the surface normal of a receiver surface and the line connecting the two surfaces
// For area A2
// dimensions are 1X1 in, so
dA2=(1*1)/144;
Beta1=40*%pi/180;
r=4;
dw2_1=dA2*cos(Beta1)/r^2;
printf("\nThe solid angle subtended by area dA2 with respect to dA1 is %.2e sr",dw2_1);
dA3=dA2;
Beta2=0;
dw3_1=dA3*cos(Beta2)/r^2;
printf("\nThe solid angle subtended by area dA3 with respect to dA1 is %.2e sr",dw3_1);
printf("\n\n\t\t\tSolution to Part (b)\n");
theta2=%pi*50/180;
theta3=%pi*60/180;
I_theta2=2000*(1-0.4*(sin(theta2))^2);
I_theta3=2000*(1-0.4*(sin(theta3))^2);
printf("\n The intensity of radiation emitted from dA1 in the direction of dA2 is %d BTU/(hr.sq.ft.sr)",I_theta2);
printf("\n The intensity of radiation emitted from dA1 in the direction of dA3 is %d BTU/(hr.sq.ft.sr)",I_theta3);
printf("\n\n\t\t\tSolution to Part (c)\n");
dA1=1/144;
dq1_2=I_theta2*dA1*cos(theta2)*dw2_1;
dq1_3=I_theta3*dA1*cos(theta3)*dw3_1;
printf("\nThe rate at which radiation emitted by dA1 is intercepted by dA2 is %.2e BTU/hr",dq1_2);
printf("\nThe rate at which radiation emitted by dA1 is intercepted by dA3 is %.2e BTU/hr",dq1_3);
