////Variable Declarations
h = 6.626e-34      //Planks constant, J.s
k = 1.38e-23       //Boltzman constant, J/K
c = 3.0e8          //speed of light, m/s
l = 0.01           //Box length, m 
n2 =1
n1 = 2        //Energy levels states
m = 5.31e-26       //mass of oxygen molecule, kg

//Calculations 
dE = (n1+n2)*h**2/(8*m*l**2)
dEcm = dE/(h*c*1e2)
//Results
printf("\n Difference in energy levels is %3.2e J or %3.2e 1/cm",dE,dEcm)

