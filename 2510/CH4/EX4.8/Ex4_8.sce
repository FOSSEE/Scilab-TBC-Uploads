//Variable declaration:
n = 111.4                   //Flowrate of air stream (lbmol/min)
H1 = 1170                   //Average heat capacity at 200°F (Btu/lbmol)
H2 = 4010                   //Average heat capacity at 600°F (Btu/lbmol)

//Calculation:
Q = n*(H2 - H1)             //The heat transfer rate (Btu/min)

//Result:
printf ("The heat transfer rate required is: %.2f x 10**5 Btu/min",Q/10**5)
