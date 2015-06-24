//Problem 9.04:

//initializing the variables:
w = 65; // in lb
Ws = 125; // in lb
a = 0.45;
Ts = 75;// in deg C

//calculation:
T = (9*Ts/5) + 32
wf = (w*0 + a*Ws)/(Ws + w)
//From Fig. 9.4
Hfinal = 156 // in Btu/lb
Tf = 208 // in deg F
//From Fig. 9.4, the absolute temperature change, DT, is
DT = Tf - T

printf("\n\nResult\n\n")
printf("\n the adiabatic temperature change is %.0f deg F",DT)