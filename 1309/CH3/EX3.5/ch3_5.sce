clc;
clear;
printf("\t\t\tChapter3_example5\n\n\n");
//  (a) Using the pin-fin equations for the case where the exposed tip is assumed insulated, graph the temperature distribution existing within the rod. (b) Use the numerical formulation of this section to obtain the temperature distribution. (c) Compare the two models to determine how well the numerical results approximate the exact results
h=1.1; // convective coefficient in BTU/(hr.ft^2. degree R)
Tw=200;
T_inf=68; // ambient temperature
printf("\n\t\t\tSolution to part (a)\n");
k=0.47; // thermal conductivity in BTU/(hr.ft.degree R) from table B3
D=0.25/12; // diameter in ft
A=%pi*D^2/4; // cross sectional area in ft^2
P=%pi*D; // perimeter in ft
printf("\nThe cross sectional area is %.3e sq.ft and Perimeter is %.3e ft",A,P);
L=6/12; // length in ft
mL=L*((h*P)/(k*A))^0.5;
printf("\nThe value of Product mL is %.2f",mL);
z=0:1.5:6;
[n m]=size(z);
for i=1:m
    T(i)=T_inf+(Tw-T_inf)*(cosh(mL*(1-(z(i)/6)))/(cosh(mL)));
end
printf("\n\n\t\t\tSolution to part (b)\n");
d_zeta=1/4;
K=2+(mL*d_zeta)^2;
printf("\nThe value of K is %.4f",K);
T_(5)=T_inf+(Tw-T_inf)*(2/(K^4-4*K^2+2));
T_(4)=T_inf+(Tw-T_inf)*(K/(K^4-4*K^2+2));
T_(3)=T_inf+(Tw-T_inf)*((K^2-1)/(K^4-4*K^2+2));
T_(2)=T_inf+(Tw-T_inf)*((K^3-3*K)/(K^4-4*K^2+2));
T_(1)=200;
printf("\n\nA Comparison of Exact to Numerical Results for the Data of Example 3.5");
printf("\nz,in\tExact (e) T\tNumerical (n) T\t Percent error (e - n)/e");
for i=1:m
err(i)=(T(i)-T_(i))/T(i);
printf("\n%.1f\t%.2f\t\t%.2f\t\t%.2f\n",z(i),T(i),T_(i),err(i)*100);
end
plot(z,T,z,T_);
a=gca();
newticks1=a.x_ticks;
newticks1(2)=[0;1.5;3.0;4.5;6];
newticks1(3)=['0';'1.5';'3.0';'4.5';'6'];
a.x_ticks=newticks1;
newticks2=a.y_ticks;
newticks2(2)=[75;100;125;150;175;200];
newticks2(3)=['75';'100';'125';'150';'175';'200'];
a.y_ticks=newticks2;
title('A comparison of the exact to the numerical temperature profiles for the pin fin of Example 3.5');
xlabel("z, in");
ylabel("T, degree F");
hl=legend(['Exact Solution';'Numerical Solution']);