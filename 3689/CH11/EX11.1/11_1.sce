////
//Variable Declaration
aH = 0.770        //Activity of 
fH2 = 1.13        //Fugacity of Hydrogen gas
E0 = 0.0          //Std. electrode potential, V
n = 1.0           //Number of electrons transfered

//Calculations
E = E0 - (0.05916/n)*log(aH/sqrt(fH2))

//Results
printf("\n The potential of H+/H2 half cell %5.4f V",E)

