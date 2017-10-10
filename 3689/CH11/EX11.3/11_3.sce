////Variable Declaration
E01 = 0.771      //Rx1 : Fe3+ + e- -----> Fe2+
E02 = -0.447     //Rx2 : Fe2+ + 2e- -----> Fe
F = 96485        //Faraday constant, C/mol
[n1,n2,n3] = (1.,2.,3.)

//Calculations
dG01 = -n1*F*E01
dG02 = -n2*F*E02
                //For overall reaction
dG0 = dG01 + dG02
E0Fe3byFe = -dG0/(n3*F)

//Results
printf("\n E0 for overall reaction is %5.3f V",E0Fe3byFe)

