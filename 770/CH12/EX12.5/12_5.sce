clear;
clc;

//Example - 12.5
//Page number - 426
printf("Example - 12.5 and Page number - 426\n\n");

//Given
T = 40 + 273.15;//[K] - Temperature

x1=[0.083,0.176,0.268,0.353,0.428,0.720,0.780,0.850,0.900];// Mole fraction of component 1
delta_H_mix=[0.250,0.488,0.670,0.790,0.863,0.775,0.669,0.510,0.362];//[kJ/mol] - Enthalpy of the solution

x2=zeros(1,9);// Mole fraction of component 2
del_H=zeros(1,9);//[kJ/mol] - del_H = delta_H_mix/(x1*x2)

for i=1:9;
    x2(1,i)=1-x1(i);
    del_H(1,i)=delta_H_mix(i)/(x1(i)*x2(i));
end

//Now employing the concept of quadratic regression of the data ( x1 , del_H ) to solve the equation of the type
//y = a0 + a1*x + a2*x^(2) 
//Here the above equation is in the form of
//del_H = delta_H_mix/(x1*x2) = a0 + a1*x1 + a2*x1^(2) 

//From the matrix method to solve simultaneous linear equations, we have
a=[9 sum(x1) sum(x1^2);sum(x1) sum(x1^2) sum(x1^3);sum(x1^2) sum(x1^3) sum(x1^4)];
b=[sum(del_H);sum(x1.*del_H);sum((x1^2).*del_H)];
soln=a\b;
a0=soln(1);
a1=soln(2);
a2=soln(3);

//del_H = delta_H_mix/(x1*x2) = a0 + a1*x1 + a2*x1^(2)
//delta_H_mix = (a0 + a1*x1 + a2*x1^(2))*(x1*(1 - x1))
//At x1 = 0.25,
x_1 = 0.25;//[mol]
delta_H_mix = (a0+(a1*x_1)+(a2*x_1^2))*(x_1*(1-x_1));//[kJ/mol]

//Now differentiating the above equation with respect to x we get
//d/dx(delta_H_mix) = del_delta_H_mix = (-4*a2*x1^3) + (3*(a2-a1)*x1^2) + (2*(a1-a0)*x1)+ a0
//Again  for x1 = 0.25
x_1_prime = 0.25;//[mol]
del_delta_H_mix = (-4*a2*x_1_prime^3)+(3*(a2-a1)*x_1_prime^2)+(2*(a1-a0)*x_1_prime)+a0;//[kJ/mol]

//We have the relation
// H1_bar - H1 = delta_H_mix + x2*del_delta_H_mix, and
// H2_bar - H2 = delta_H_mix - x1*del_delta_H_mix

//Let us suppose
//k_1 = H1_bar - H1 , and
//k_2 = H2_bar - H2

k_1 = delta_H_mix + (1-x_1_prime)*del_delta_H_mix;//[kJ/mol]
k_2 = delta_H_mix - x_1_prime*del_delta_H_mix;//[kJ/mol]


printf("The value of (H1_bar - H1) at x1 = 0.25 is %f kJ/mol\n\n",k_1);
printf("The value of (H2_bar - H2) at x1 = 0.25 is %f kJ/mol",k_2);
    