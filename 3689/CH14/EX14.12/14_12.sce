////
//Variable Declarations
h = 6.626e-34      //Planks constant, J.s
k = 1.38e-23       //Boltzman constant, J/K
c = 3.0e8          //speed of light, m/s
T = 298.           //Temeprature, K
n = [0,1,2,3,4,5,6,7,8]   //Energy levels
E0 = list(0,137.38,323.46,552.96,2112.28,2153.21,2220.11,2311.36,2424.78)    //Energies, 1/cm
g0 = list(4,6,8,10,2,4,6,8,10)

//Calculations
qE = 0.0
for i = 1:9
    a =g0(i)*exp(-h*c*100*E0(i)/(k*T))
    qE = qE + a
end
//Results
printf("\n Electronic partition function for F2 at %4.1f K is %4.2f",T, qE)

