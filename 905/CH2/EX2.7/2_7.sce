clear;
clc;

// Illustration 2.7
// Page: 116

printf('Illustration 2.7 -  Page: 116\n\n');

// solution
//*****Data*****//
// a-benzene      b-nitrogen
T = 300; // [K]
P = 101.3; // [kPa]
v =10; // [m/s]
R = 8.314; // [cubic m.Pa/mole.K]
//*****//

// Combining the given correlation with the definitions of j-H, and St_H, from Table 2.1 yields
//            j_H = h*Pr^(2/3)/(Cp*row*v) = h*Pr^(2/3)/(Cp*Gy) = f(Re)
// Therefore 
//            h = Cp*Gy*f(Re)/(Pr)^(2/3) = 20*(Gy)^0.5    for carbon dioxide

// Since Re = row*v*l/u = Gy*l/u, where 'l' is a characteristic length, the function f(Re) must be compatible with 20*Gy^0.5 .Therefore, let f(Re) = bRe^n, where 'b'   and 'n' are constants to be evaluated. Then,

//            h =  (Cp*Gy*b/Pr^(2/3))*(l*Gy/u)^n = 20*Gy^0.5
// Comparing both sides of equation, we get
//            n+1 =0.5
// Therefore
n = -0.5;
// Data on the properties of C02 at 300 K and 1 bar
u = 1.5*10^-5; // [viscosity, P]
Pr = 0.77; // [Prandtl number]
Cp = 853; // [J/kg.K]
// Therefore
//           b = 5.086*l^0.5
//           j_D = j_H = f(Re) = 5.086*(l^0.5)*Re^-0.5
// From Table 2.1
//           F = j_D*c*v/Sc^(2/3) = 5.086*(l^0.5)*c*v/(Re^0.5*Sc^(2/3)) = 5.086*(row*v*u)^0.5/(Mavg*Sc^(2/3))

// Vapor pressure of benzene
P_a = exp(15.9008-(2788.51/(T-52.36))); // [mm of Hg]
P_a = P_a*101.3/760; // [kPa]

// Parameter for a-benzene, b-nitrogen 
yi_a = 0.07;     yi_b = 0.93;   
Tc_a = 562.2;    Tc_b = 126.2;  // [K]
Pc_a = 48.9;     Pc_b = 33.9;  // [bar]
M_a = 78.1;      M_b  = 28;   // [gram/mole]
V_a = 259;       V_b  = 89.8; // [cubic cm/mole]
Z_a = 0.271;     Z_b  = 0.290;
sigma_a = 5.349; sigma_b = 3.798; // [Angstrom]
ek_a = 412.3;    ek_b = 71.4; // [E/k, K]


// From equation 2.52 and 2.53
Tcm = yi_b*Tc_b+yi_a*Tc_a; // [K]
Pcm = 10^6*R*Tcm*(yi_b*Z_b+yi_a*Z_a)/((yi_b*V_b+yi_a*V_a)*100000); // [bar]
M_avg = yi_b*M_b+yi_a*M_a; // [kg/kmole]
printf("Average molecular weight is %f kg/kmole\n\n",M_avg);
row = P*M_avg/(R*T); // [kg/cubic m]
printf("Density of mixture is %f kg/cubic m\n\n",row);
// From equation 2.50
Em =  0.176*(Tcm/(M_avg^3*Pcm^4))^(1/6); // [uP]^-1

// From equation 2.51
Trm = T/Tcm;
f_Trm = (0.807*Trm^0.618)-(0.357*exp(-0.449*Trm))+(0.340*exp(-4.058*Trm))+0.018; 
// From equation 2.49 
u = f_Trm/Em; // [uP]
u = u*10^-7; // [viscosity, kg/m.s]
printf("Average viscosity of mixture is %e kg/m.s\n\n",u);

// Calculating diffusivity of benzene using equation 1.49
D_ab = 0.0986; // [square cm/s]
Sc = u/(row*D_ab*10^-4); // [Schmidt number]

F = 5.086*(row*v*u)^0.5/(M_avg*Sc^(2/3)); // [kmole/square m.s]
printf("The required mass transfer coefficient is %e kmole/square m.s\n\n",F);