//Chapter 20, Problem 11
clc;
Po = 12750;             // in Watts
pf = 0.77;              // power factor
eff = 0.85;
VL = 415;               // in Volts

//calculation:
//eff = power_out/power_in
Pi = Po/eff
//Power P = VL*IL*(3^0.5)*cos(phi)  or  P = 3*Ip*Ip*Rp)
IL = Pi/(VL*(3^0.5)*pf) // line current

//For a delta connection:
//IL = Ip*(3^0.5)
Ip = IL/(3^0.5)

printf("\n\n (a)Power input = %d W",Pi)
printf("\n\n (b)Line current = %.2f A",IL)
printf("\n\n (c)Phase current = %.2f A",Ip)
