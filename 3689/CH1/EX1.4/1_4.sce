////Variable Declaration
T = 300.0               //Nitrogen temperature, K
v1 = 250.00             //Molar volume, L
v2 = 0.1                //Molar volume, L
a = 1.37                //Van der Waals parameter a, bar.dm6/mol2 
b = 0.0387              //Van der Waals parameter b, dm3/mol
R = 8.314e-2            //Ideal Gas Constant, L.bar/(mol.K)
n = 1.
//Calculations

p1 = n*R*T/v1           
p2 = n*R*T/v2
pv1 = n*R*T/(v1-n*b)- n**2*a/v1**2
pv2 = n*R*T/(v2-n*b)- n**2*a/v2**2

//Results
printf("\n Pressure from ideal gas law = %4.2e bar nad from Van der Waals equation = %4.2e bar ",p1, pv1)

printf("\n Pressure from ideal gas law = %4.1f bar nad from Van der Waals equation = %4.1f bar ",p2, pv2)

