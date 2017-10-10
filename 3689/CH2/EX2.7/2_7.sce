////
//Variable Declaration  Part d
h1 = 1000.0          //initial Altitude of cloud, m 
hf = 3500.0          //Final Altitude of cloud, m 
p1 = 0.802           //Pressure at h1, atm 
pf = 0.602           //Pressure at hf, atm
T1 = 288.0           //Initial temperature of cloud, K
cp = 28.86           //Specific heat of air, J/mol.K
R = 8.314            //Gas constant, J/mol.K

//Calculations
Tf = exp(-(cp/(cp-R)-1)/(cp/(cp-R))*log(p1/pf))*T1
//Results
printf("\n Final temperature of cloud %4.1f K",Tf)

