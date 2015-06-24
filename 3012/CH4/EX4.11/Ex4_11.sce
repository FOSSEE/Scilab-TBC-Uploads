// Given:-
V = 0.85                               // volume of tank in m^3
T1 = 260.0                             // initial temperature of the tank in degree celcius
X1 = 0.7                               // initial quality

// from table A-2
uf1 = 1128.4                           // in kg/kg
ug1 = 2599.0                           // in kg/kg

vf1 = 1.2755e-3                        // in m^3/kg
vg1 = 0.04221                          // in m^3/kg



// for final state, from table A-2,
u2 = 2599.0                             // units in KJ/kg 
v2 = 42.21e-3                           // units in m^3/Kg
he = 2796.6                             // units in KJ/kg

// Calculations:-
u1 = uf1 + X1*(ug1-uf1)                 // in kj/kg
v1 = vf1 + X1*(vg1-vf1)                 // in m^3/kg
m1 = V/v1                               // initial mass in kg
m2 =  V/v2                              // final mass in kg
U2 = m2*u2                              // final internal energy in KJ
U1 = m1*u1                              // initial internal energy in KJ
Qcv = (U2-U1) - he*(m2-m1) 

// Results:-
printf( ' The amount of heat transfer is %.2f KJ.',Qcv)
