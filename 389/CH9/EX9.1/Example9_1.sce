clear;
clc;

// Illustration 9.1
// Page: 349

printf('Illustration 9.1 - Page: 349\n\n');

// solution

//****Data****//
// a:n-heptane b:n-octane
Pt = 760; // [mm Hg]
//*****//

Tempa = 98.4;// [boiling point of A,OC]
Tempb = 125.6;// [boiling point of B,OC]
x = zeros(6);
y_star = zeros(6);
alpha = zeros(6);
// Data =  [Temp Pa (mm Hg) Pb(mm Hg)]
Data = [98.4 760 333;105 940 417;110 1050 484;115 1200 561;120 1350 650;125.6 1540 760];
for i = 1:6
    x(i) = (Pt-Data(i,3))/(Data(i,2)-Data(i,3));// [mole fraction of heptane in liquid]
    y_star(i) = (Data(i,2)/Pt)*x(i);
    alpha(i) = Data(i,2)/Data(i,3);
end
printf("T(OC)\t\t\t Pa(mm Hg)\t\t\t Pb(mm Hg)\t\t\t x\t\t\t\t y*\t\t\t alpha\n");
for i = 1:6
    printf("%f\t \t %d\t \t \t \t %d\t \t \t \t %f\t \t \t %3f\t \t %f\t \t\n",Data(i,1),Data(i,2),Data(i,3),x(i),y_star(i),alpha(i));
end