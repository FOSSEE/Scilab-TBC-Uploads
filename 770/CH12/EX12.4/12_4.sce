clear;
clc;

//Example - 12.4
//Page number - 424
printf("Example - 12.4 and Page number - 424\n\n");

//Given
//component 1 = formic acid
//component 2 = water
T = 20 + 273.15;//[K] - Temperature
Mol_form = 46.027;//Molecular weight of formic acid
Mol_water = 18.015;// Molecular weight of water

Wt_perc=[10,18,30,50,72,78];//Weight percent of formic acid
den=[1.0246,1.0441,1.0729,1.1207,1.1702,1.1818];//[g/cm^(3)] - Density of solution

V_g=zeros(1,6);//[cm^(3)/g] - Volume of 1 g of solution
x1=zeros(1,6);// Mole fraction of component 1
x2=zeros(1,6);// Mole fraction of component 2
n=zeros(1,6);// Number of moles in 1 g
V_mol=zeros(1,6);//[cm^(3)/mol] - Volume of 1 mol of solution
x_V=zeros(1,6);//[cm^(3)/mol] - x_V = x1*V_form + x2*V_water
V_mix=zeros(1,6);//[cm^(3)/mol] -  V_mix = V - x1*V_form - x2*V_water
del_V=zeros(1,6);// [cm^(3)/mol] - del_V = V_mix/(x1*x2)

//V_mol = V_form at x1 = 1 and V_mol = V_water at x1 = 0, therefore
V_form = 37.737;//[cm^(3)/mol] - Molar volume of pure formic acid (component 1)
V_water = 18.050;//[cm^(3)/mol] - Molar volume of pure water (component 2)

for i=1:6;
    V_g(i)=1/den(i);
    x1(1,i)=(Wt_perc(i)/Mol_form)/((Wt_perc(i)/Mol_form)+((100-Wt_perc(i))/Mol_water));
    x2(1,i)=1-x1(i);
    n(1,i)=((Wt_perc(i)/100)/Mol_form)+(((100-Wt_perc(i))/100)/Mol_water);
    V_mol(1,i)=V_g(i)/n(i);
    x_V(1,i)=V_form*x1(i)+V_water*x2(i);
    V_mix(1,i)=V_mol(i)-x1(i)*V_form-x2(i)*V_water;
    del_V(1,i)=V_mix(i)/(x1(i)*x2(i));
end

//Now employing the concept of quadratic regression of the data ( x1 , del_V ) to solve the equation of the type
//y = a0 + a1*x + a2*x^(2) 
//Here the above equation is in the form of
//del_V = V_mix/(x1*x2) = a0 + a1*x1 + a2*x1^(2) 

//From the matrix method to solve simultaneous linear equations, we have
a=[11 sum(x1) sum(x1^2);sum(x1) sum(x1^2) sum(x1^3);sum(x1^2) sum(x1^3) sum(x1^4)];
b=[sum(del_V);sum(x1.*del_V);sum((x1^2).*del_V)];
soln=a\b;
a0=soln(1);
a1=soln(2);
a2=soln(3);

//del_V = V_mix/(x1*x2) = a0 + a1*x1 + a2*x1^(2)
//V_mix = (a0 + a1*x1 + a2*x1^(2))*(x1*(1 - x1))
//Solving the above equation for x1,
deff('[y]=f(x1)','y=(a0+(a1*x1)+(a2*x1^2))*(x1*(1-x1))');

//Now differentiating the above equation with respect to x we get
//d/dx(V_mix) = (-4*a2*x1^3) + (3*(a2-a1)*x1^2) + (2*(a1-a0)*x1)+ a0
//Again solving it for x1
deff('[y]=f1(x1)','y=(-4*a2*x1^3)+(3*(a2-a1)*x1^2)+(2*(a1-a0)*x1)+a0');

//At 15 Wt% of formic acid, x1 is given by
x1_prime_1 = (15/Mol_form)/((15/Mol_form)+((100-15)/Mol_water)); 
//Similarly at 75 Wt% of formic acid, x1 is given by
x1_prime_2 = (75/Mol_form)/((75/Mol_form)+((100-75)/Mol_water)); 

Wt_perc_prime=[15,75];
x1_prime=[x1_prime_1,x1_prime_2];
V_mix_prime=zeros(1,2);//[cm^(3)/mol] -  V_mix = V - x1*V_meth - x2*V_water
del_V_prime=zeros(1,2);//[cm^(3)/mol] - del_V = V_mix/(x1*x2)
V1_bar=zeros(1,2);//[cm^(3)/mol] - Partial molar volume of component 1
V2_bar=zeros(1,2);//[cm^(3)/mol] - Partial molar volume of component 1

for j=1:2;
    V_mix_prime(j)=f(x1_prime(j));
    del_V_prime(j)=f1(x1_prime(j));
    V1_bar(j)=V_form+V_mix_prime(j)+(1-x1_prime(j))*del_V_prime(j);
    V2_bar(j)=V_water+V_mix_prime(j)-x1_prime(j)*del_V_prime(j);
    printf("For weight percent of formic acid = %f percent\n",Wt_perc_prime(j));
    printf("The partial molar volume of formic acid (component 1) is %f cm^(3)/mol\n",V1_bar(j));
    printf("The partial molar volume of water (component 2) is %f cm^(3)/mol\n\n",V2_bar(j));
end
