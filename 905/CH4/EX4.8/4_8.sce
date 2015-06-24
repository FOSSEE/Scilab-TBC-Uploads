clear;
clc;

// Illustration 4.8
// Page: 259

printf('Illustration 4.8 -  Page: 259\n\n');

// solution//
// From Example 4.4, 4.6 and 4.7

Do = 5*10^-3; // [m]
rowg = 1.923; // [kg/cubic m]
rowl = 986; // [kg/cubic m]
g = 9.8; // [square m/s]
hl = 0.0173; // [m]
vo = 18.48; // [m/s]
phie = 0.274;
Ks = 0.082; // [m]
A = 0.101; // [Ah/Aa]
t = 0.5; // [m]

Fr = sqrt(rowg*vo^2/(rowl*g*hl)); // [Froude number]
if(Fr>=0.5)
    printf('Weeping is not significant\n\n');
else()
    printf('Significant weeping occurs\n\n');
    end
// From above weeping is not a problem under this circumstances
// From equation 4.47
k = 0.5*(1-tanh(1.3*log(hl/Do)-0.15));

// From equation 4.46
h2q = (hl/phie) + 7.79*(1+6.9*(Do/hl)^1.85)*(Ks^2/(phie*g*A)); // [m]
// From equation 4.45
E = 0.00335*(h2q/t)^1.1*(rowl/rowg)^0.5*(hl/h2q)^k;
// From Example 4.4, the gas mass flow rate is V = 2.202 kg/s
V = 2.202; // [kg/s]
Le = E*V; // [kg/s]
printf("The entrainment flow rate for the ethanol absorber is %f m/s\n\n",Le);