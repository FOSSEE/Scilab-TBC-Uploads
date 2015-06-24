clear;
clc;

// Illustration 10.10
// Page: 552

printf('Illustration 10.10 - Page: 552\n\n');

// Solution

//****Data****//
B = 1150;// [kg/h]
//*******//

// x and y are taken in weight ratio.
x1_prime = 0.0101;// [Wt. fraction]
xF_prime = 0.0101;// [Wt. fraction]
y2_prime = 0;// [Wt. fraction]
x2_prime = 0.001001;// [Wt. fraction]
y1_prime = 0.0782;// [Wt. fraction]
// From Illustration 10.4:
A = 990;// [kg/h]
// At the dilute end:
m1_prime = 0.798;
Value1 = m1_prime*B/A;
// At the concentrated end:
m2_prime = 0.953;
Value2 = m2_prime*B/A;
ValueAv = (Value1*Value2)^0.5;
// From Eqn. 10.116:
// Since y2_prime = 0
Value3 = x2_prime/x1_prime;
NtoR = (log((1/Value3)*(1-(1/ValueAv))+(1/ValueAv)))/(1-(1/ValueAv));
printf("Number of theoretical Unit : %f\n",NtoR);