//Problem 17.03:

//initializing the variables:
p = 50; // psig
T = 25; // in deg C
Tk = 25+273; // in K
Pi = 5; //in psig
R = 1.987; // in cal/gmol.K

//calculation:
//combustion reaction equation for 1 mole of pentane with stoichiometric air:
//C5H12 + 8O2 + [30.1N2] ---> 5CO2 + 6H2O + [30.1N2]
// note that
nO2 = 8
nC5H12 = 1
nCO2 = 5
nH2O = 6
nN2 = (0.79/0.21)*nO2
//number of moles initially and finally present, and the change in the number of moles:
nin = nC5H12 + nO2 + nN2
nout = nCO2 + nH2O + nN2
//the constant volume heat capacity as a function of the constant pressure heat capacity
//(see Table 17.2):
//Cv = Cp -R
//the change in internal energy by integrating the internal energy change equation, i.e.,
//dU = CvdT
//The integrated form of the left-hand side below is provided on the right-hand side
//int(Tin,Tout)[E(niCv,i)out]dT = [(4.542)(30.1) + (3.329)(5) + (4.893)(6)](Tout - 298) + [(0.149E-2)(30.1) + (1.42E-2)(5) + (0.345E-2)(6)](Tout^2 - 298^2) + [(-0.0227E-5)(30.1) + (-0.8362E-5)(5) + (-0.0483E5)(6)](Tout^3 - 298^3)/3 + [(1.784E9)(5)](Tout^4 - 298^4)/4

//Solve the equation obtained on the RHS of the above equation for Tout by trial-and-error until the \n equation has the value of the internal energy of reaction at 25 degC given previously:
//By trial-and-error calculation, 
Tout = 2870
//the final pressure in the vessel:
Pf = (14.7+Pi)*(41.1/39.1)*(Tout/Tk) - 14.7

printf("\n\nResult\n\n")
printf("\n Since the final pressure of %.1f psig is less\nthan the burst pressure of 200 psig, the vessel can withstand the explosion. ",Pf)
