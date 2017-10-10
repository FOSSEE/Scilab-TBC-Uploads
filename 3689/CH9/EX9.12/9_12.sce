////Variable Declaration
m = 70.0        //Mass of human body, kg
V = 5.00        //Volume of blood, L
HN2 = 9.04e4    //Henry law constant for N2 solubility in blood, bar
T = 298.0       //Temperature, K
rho = 1.00      //density of blood, kg/L
Mw = 18.02      //Molecualr wt of water, g/mol
X = 80          //Percent of N2 at sea level
p1= 1.0  //Pressures, bar
 p2 = 50.0
R = 8.314e-2       //Ideal Gas constant, L.bar/(mol.K)
//Calculations
nN21  = (V*rho*1e3/Mw)*(p1*X/100)/HN2
nN22  = (V*rho*1e3/Mw)*(p2*X/100)/HN2
V = (nN22-nN21)*R*T/p1
//Results
printf("\n Number of moles of nitrogen in blood at 1 and 50 bar are %3.2e,%3.3f mol",nN21,nN22)

printf("\n Volume of nitrogen released from blood at reduced pressure %4.3f L",V)

