clear;
clc;

//Example - 12.1
//Page number - 419
printf("Example - 12.1 and Page number - 419\n\n");

//Given
//component 1 = methanol
//component 2 = water
T = 0 + 273.15;//[K] - Temperature
P = 1;//[atm] - Pressure
x_methanol = 0.5;//Mole fraction of methanol at which molar volume is to be calculated
x_water = 0.5;//Mole fraction at which molar volume is to be calculated

//V = V1 at x1 = 1 and V = V2 at x1 = 0, therefore
V1 = 40.7;//[cm^(3)/mol] - Molar volume of pure component 1
V2 = 18.1;//[cm^(3)/mol] - Molar volume of pure component 2

x1=[0.114,0.197,0.249,0.495,0.692,0.785,0.892];// Values of mole fraction of component 1
V=[20.3,21.9,23.0,28.3,32.9,35.2,37.9];// Values of molar volume
x2=zeros(1,7);// Mole fraction of component 2
x_V=zeros(1,7);// x_V = x1*V_1 + x2*V_2
V_mix=zeros(1,7);// V_mix = V - x1*V_1 - x2*V_2
del_V=zeros(1,7);//del_V = V_mix/(x1*x2)

for i=1:7;
    x2(1,i)=1-x1(i);
    x_V(1,i)=x1(i)*V1 + x2(i)*V2;
    V_mix(1,i)=V(i)-x1(i)*V1- x2(i)*V2;
    del_V(1,i)=V_mix(i)/(x1(i)*x2(i));
end

//Now employing the concept of quadratic regression of the data ( x1 , del_V ) to solve the equation of the type
//y = a0 + a1*x + a2*x^(2) 
//Here the above equation is in the form of
//del_V = V_mix/(x1*x2) = a0 + a1*x1 + a2*x1^(2) 

//From the matrix method to solve simultaneous linear equations, we have
a=[7 sum(x1) sum(x1^2);sum(x1) sum(x1^2) sum(x1^3);sum(x1^2) sum(x1^3) sum(x1^4)];
b=[sum(del_V);sum(x1.*del_V);sum((x1^2).*del_V)];
soln=a\b;
a0=soln(1);
a1=soln(2);
a2=soln(3);

//del_V = V_mix/(x1*x2) = a0 + a1*x1 + a2*x1^(2)
//V_mix = (a0 + a1*x1 + a2*x1^(2))*(x1*(1 - x1))
// For x1 = 0.5
x1  = 0.5;
V_mix_prime = (a0+(a1*x1)+(a2*x1^2))*(x1*(1-x1));//[cm^(3)/mol]

//Now differentiating the above equation with respect to x we get
//d/dx(V_mix) = (-4*a2*x1^3) + (3*(a2-a1)*x1^2) + (2*(a1-a0)*x1)+ a0
//Again for x1 = 0.5
x1_prime = 0.5;
del_V_mix_prime = (-4*a2*x1_prime^3)+(3*(a2-a1)*x1_prime^2)+(2*(a1-a0)*x1_prime)+a0;

//Finally,calculating the partial molar volumes
V1_bar = V1 + V_mix_prime + x_water*del_V_mix_prime;//[cm^(3)/mol] 
V2_bar = V2 + V_mix_prime - x_methanol*del_V_mix_prime;//[cm^(3)/mol]

printf("The partial molar volume of methanol (component 1) is %f cm^(3)/mol\n\n",V1_bar);
printf("The partial molar volume of water (component 2) is %f cm^(3)/mol",V2_bar);


