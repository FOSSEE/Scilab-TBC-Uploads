clear;
clc;

// Illustration 9.3
// Page: 362

printf('Illustration 9.3 - Page: 362\n\n');

// solution

//****Data****//
// a:n-C3H8 b:n-C4H10 c:n-C5H12 d:n-C6H14
// Bubble Point Calculation
xa = 0.05;
xb = 0.30;
xc = 0.40;
xd = 0.25;
P = 350;// [kN/square m]
//******//

// Assume:
Temp = 60;// [OC]
x = [0.05 0.30 0.40 0.25];
m = [4.70 1.70 0.62 0.25];// [At 60 OC]
// Reference: C5H12
mref = m(3);
Sum = 0;
alpha = zeros(4)
alpha_x = zeros(4);
for i = 1:4
    alpha(i) = m(i)/m(3);
    alpha_x(i) = alpha(i)*x(i);
    Sum = Sum+alpha_x(i);
end
// From Eqn. 9.23:
SumF = Sum;
Sum = 0;
mref = 1/SumF;
// Corresponding Temparature from the nomograph:
Temp = 56.8;// [OC]
m = [4.60 1.60 0.588 0.235];// [At 56.8 OC]
for i = 1:4
    alpha(i) = m(i)/m(3);
    alpha_x(i) = alpha(i)*x(i);
    Sum = Sum+alpha_x(i);
end
SumF = Sum;
mref = 1/SumF;
//  Corresponding Temparature from the nomograph:
Temp = 56.7;// [OC]
Bt = 56.8;// [OC]
yi = zeros(4);
for i = 1:4
    yi(i) = alpha_x(i)/Sum;
end
printf("The Bubble Point is %f OC\n",Bt);
printf("Bubble point vapour composition \n");
printf("\t   yi\n");
printf("n-C3\t %f\n",yi(1));
printf("n-C4\t %f\n",yi(2));
printf("n-C5\t %f\n",yi(3));
printf("n-C6\t %f\n",yi(4));

printf("\n \n \n");

// Dew Point Calculation
// Asume:
ya = 0.05;
yb = 0.30;
yc = 0.40;
yd = 0.25;
Temp = 80;// [OC]
y = [0.05 0.30 0.40 0.25];
m = [6.30 2.50 0.96 0.43];// [At 60 OC]
// Reference: C5H12
mref = m(3);
Sum = 0;
alpha = zeros(4)
alpha_y = zeros(4);
for i = 1:4
    alpha(i) = m(i)/m(3);
    alpha_y(i) = y(i)/alpha(i);
    Sum = Sum+alpha_y(i);
end

// From Eqn. 9.29:
SumF = Sum;
Sum = 0;
mref = SumF;
// Corresponding Temparature from the nomograph:
Temp = 83.7;// [OC]
m = [6.60 2.70 1.08 0.47];// [At 56.8 OC]
for i = 1:4
    alpha(i) = m(i)/m(3);
    alpha_y(i) = y(i)/alpha(i);
    Sum = Sum+alpha_y(i);
end
SumF = Sum;
mref = 1/SumF;
//  Corresponding Temparature from the nomograph:
Temp = 84;// [OC]
Dt = 84;// [OC]
xi = zeros(4);
for i = 1:4
    xi(i) = alpha_y(i)/Sum;
end
printf("The Dew Point is %f OC\n",Dt);
printf("Dew point liquid composition \n");
printf("\t   xi\n");
printf("n-C3\t %f\n",xi(1));
printf("n-C4\t %f\n",xi(2));
printf("n-C5\t %f\n",xi(3));
printf("n-C6\t %f\n",xi(4));