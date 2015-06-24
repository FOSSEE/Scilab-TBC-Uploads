clear;
clc;

// Illustration 11.6
// Page: 616

printf('Illustration 11.6 - Page: 616\n\n');

// Solution

//*****Data*****//
// a: air b:silica
Density_a = 1.181;// [kg/cubic m]
Density_b = 671.2;// [kg/cubic m]
kSap = 0.965;// [kg H2O/square m s]
Y1 = 0.005;// [kg H2O/kg dry air]
Y2 = 0.0001;// [kg H2O/kg dry air]
Ss = 0.680;// [square m/s]
Gs = 1.36;// [kg/square m.s]
X2 = 0;// [kg H2O/kg dry air]
// Equilibrium function:
m = 0.0185;
//************//
X1 = (Gs*(Y1-Y2)/Ss)+X2;// [kg H2O/kg dry air]
deff('[Y] = f77(X)','Y = m*X');
Y2_star = f77(X2);// [kg H2O/kg dry gel]
Y1_star = f77(X1);// [kg H2O/kg dry gel]
deltaY = ((Y1-Y1_star)-(Y2-Y2_star))/log((Y1-Y1_star)/(Y2-Y2_star));
NtoG = (Y1-Y2)/deltaY;
// If the fixed bed data are to be used for estimating the mass transfer coeffecient for a moving bed of solids
va = Ss/Density_b;// [m/s]
vb = Gs/Density_a;// [m/s]
rel_v = va+vb;// [relative velocity,m/s]
G_prime = rel_v*Density_a;// [relative mass velocity of air,kg/square m s]
HtG = Gs/(31.6*G_prime^0.55);// [m]
HtS = Ss/kSap;// [m]
// By Eqn. 11.52:
HtoG = HtG+(m*Gs/Ss)*HtS;// [m]
Z = NtoG*HtoG;// [m]
printf("Height of continuous countercurrent isothermal absorber for drying: %f m\n",Z);