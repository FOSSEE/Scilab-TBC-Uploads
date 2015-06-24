//Problem 19.03:

//initializing the variables:
mdt = 40000; // in kg/hr
Ti = 500; // in deg C
Pi = 2500; // in kPa
Qdt = -0.25; // in MW
To = 175; // in deg C
Po = 250; // in kPa
Tr = 25; // in deg C
Pr = 101.325; // in kPa
H1 = 3461.7; // in kJ/kg
H2 = 2816.7; // in kJ/kg
Heq = 104.8; // in kJ/kg
S1 = 7.324; // inkJ/kg.K
Seq = 0.367; // inkJ/kg.K

//calculation:
mdt = mdt/3600
Q = Qdt*1000/mdt
Ws = H2 - H1 - Q
X1 = H1 - Heq - (Tr+273)*(S1 - Seq)

printf("\n\nResult\n\n")
printf("\n the shaftwork produced by the turbine is %.1f kJ/kg and the exergy = %.1f kJ/kg ",abs(Ws), X1)