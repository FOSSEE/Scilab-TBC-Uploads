//Problem 9.05:

//initializing the variables:
w = 65; // in lb
Ws = 125; // in lb
a = 0.45;
Ts = 75;// in deg C

//calculation:
T = (9*Ts/5) + 32
wf = (w*0 + a*Ws)/(Ws + w)
//From Fig. 9.4
Hf208 = 156 // in Btu/lb
Hf167 = 118 // in Btu/lb
Q = Hf167 - Hf208
Qr = Q*(Ws + w)

printf("\n\nResult\n\n")
printf("\n the the heat effect is %.0f Btu",Qr)