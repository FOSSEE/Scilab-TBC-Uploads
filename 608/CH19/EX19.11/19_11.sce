//Problem 19.11: A 415 V, 3-phase a.c. motor has a power output of 12.75 kW and operates at a power factor of 0.77 lagging and with an efficiency of 85%. If the motor is delta-connected, determine (a) the power input, (b) the line current and (c) the phase current.

//initializing the variables:
Po = 12750; // in Watts
pf = 0.77; // power factor
eff = 0.85;
VL = 415; // in Volts

//calculation:
//eff = power_out/power_in
Pi = Po/eff
//Power P = VL*IL*(3^0.5)*cos(phi)  or  P = 3*Ip*Ip*Rp)
IL = Pi/(VL*(3^0.5)*pf) // line current

//For a delta connection:
//IL = Ip*(3^0.5)
Ip = IL/(3^0.5)

printf("\n\n Result \n\n")
printf("\n (a)power input is %.2E W",Pi)
printf("\n (b)line current is %.2f A",IL)
printf("\n (c)phase current is %.2f A",Ip)