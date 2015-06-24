//Problem 9.01:

//initializing the variables:
w = 50; // in lb
Ws = 200; // in lb
a = 0.5;
Ts = 25;// in deg C

//calculation:
WH2SO4 = w + Ws*a
WH2O = Ws*a
perH2SO4 = (WH2SO4/(WH2SO4 + WH2O))*100
//Referring to Fig. 9.3, construct a straight line between the 50% solution and pure H2SO4 at 25 deg C (77 deg F). Estimate the final temperature in deg F:
T = 140;// in deg F

printf("\n\nResult\n\n")
printf("\n the adiabatic temperature change is %.0f deg F",T)