clear;
clc;

//Example - 15.12
//Page number - 529
printf("Example - 15.12 and Page number - 529\n\n");

//Given
T = 105;//[C]
P = 1.5;//[atm]
P = P*101325*10^(-3);//[kPa]
z = [0.4,0.3667,0.2333];// Feed composition
x = [0.3,0.3,0.4];// Equilibrium liquid phase composition
y = [0.45,0.40,0.15];// Equilibrium vapour phase composition

// From the material balance equation of component 1, we get
// (L + V)*z_1 = L*x_1 + V*y_1

// Since total moles are one, therefore  L + V = 1 and thus
// z_1 = L*x_1 + (1-L)*y_1

for i=1:3;
    L = (z(i) - y(i))/(x(i) - y(i));
    V = 1 - L;
    printf(" The number of moles in liquid phase (z = %f) is given by ,L = %f\n",z(i),L);
    printf(" The number of moles in vapour phase (z = %f) is given by ,V = %f\n\n",z(i),V);
end


