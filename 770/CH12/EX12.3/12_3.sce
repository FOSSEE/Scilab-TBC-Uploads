clear;
clc;

//Example - 12.3
//Page number - 422
printf("Example - 12.3 and Page number - 422\n\n");

//Given
//component 1 = methanol
//component 2 = water
Vol = 20;//[cm^(3)] - Volume of the solution
T = 22 + 273.15;//[K] - Temperature
W_bottle = 11.5485;//[g] - Weight of density bottle
Mol_meth = 32.04;//Molecular weight of methanol
Mol_water = 18.015;// Molecular weight of water

//Density of pure components can be found out at 0% and 100% of volume percent.
den_meth = 0.7929;//[cm^(3)/mol] - Density of pure methanol
den_water = 0.9937;//[cm^(3)/mol] - Density of pure water


Vol_perc=[5,10,20,30,40,50,60,70,80,90,95];// Volumes percent of component 1 (methanol)
W_total=[31.2706,31.1468,30.8907,30.6346,30.3396,30.0053,29.5865,29.1453,28.5978,28.0325,27.7320];// Weight of solution + weight of density bottle

W_sol=zeros(1,11);// Weight of 20 cm^(3) of solution
den=zeros(1,11);// density of the solution
x1=zeros(1,11);// Mole fraction of methanol
x2=zeros(1,11);// Mole fraction of water

for i=1:11;
    W_sol(1,i)=W_total(i)-W_bottle;
    den(1,i)=W_sol(i)/Vol;
    x1(1,i)=((Vol_perc(i)*den_meth)/Mol_meth)/(((Vol_perc(i)*den_meth)/Mol_meth)+(((100-Vol_perc(i))*den_water)/Mol_water));
    x2(1,i)=1-x1(1,i);
end

//Again we have,
V_kg=zeros(1,11);//[cm^(3)] -  Volume of 1 kg of solution
n_mol=zeros(1,11);//[mol] -  Number of moles in 1 kg of solution
V_mol=zeros(1,11);//[cm^(3)/mol] -  Volume of 1 mol of solution
x_V=zeros(1,11);//[cm^(3)/mol] - x_V = x1*V_meth + x2*V_water
V_mix=zeros(1,11);//[cm^(3)/mol] -  V_mix = V_mol - x1*V_meth - x2*V_water
del_V=zeros(1,11);// [cm^(3)/mol] - del_V = V_mix/(x1*x2)

//V_mol = V_meth at x1 = 1 and V_mol = V_water at x1 = 0, therefore
V_meth = 40.4114;//[cm^(3)/mol] - Molar volume of pure component 1 (methanol)
V_water = 18.1286;//[cm^(3)/mol] - Molar volume of pure component 2 (water)

for i=1:11;
    V_kg(1,i)=1000/den(i);
    n_mol(1,i)=1000/(x1(i)*Mol_meth+x2(i)*Mol_water);
    V_mol(1,i)=V_kg(i)/n_mol(i);
    x_V(1,i)=V_meth*x1(i)+V_water*x2(i);
    V_mix(1,i)=V_mol(i)-x1(i)*V_meth-x2(i)*V_water;
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

//Now 

x1_prime=[0,0.25,0.50,0.75,1.0];
V_mix_prime=zeros(1,5);//[cm^(3)/mol] -  V_mix = V - x1*V_meth - x2*V_water
del_V_prime=zeros(1,5);//[cm^(3)/mol] - del_V = V_mix/(x1*x2)
V1_bar=zeros(1,5);//[cm^(3)/mol] - Partial molar volume of component 1
V2_bar=zeros(1,5);//[cm^(3)/mol] - Partial molar volume of component 1

for j=1:5;
    V_mix_prime(j)=f(x1_prime(j));
    del_V_prime(j)=f1(x1_prime(j));
    V1_bar(j)=V_meth+V_mix_prime(j)+(1-x1_prime(j))*del_V_prime(j);
    V2_bar(j)=V_water+V_mix_prime(j)-x1_prime(j)*del_V_prime(j);
    printf("For x1 = %f\n",x1_prime(j));
    printf("The partial molar volume of methanol (component 1) is %f cm^(3)/mol\n",V1_bar(j));
    printf("The partial molar volume of water (component 2) is %f cm^(3)/mol\n\n",V2_bar(j));
end

