//Problem 19.07: Three coils each having resistance 3 ohm and inductive reactance 4 ohm are connected (i) in star and (ii) in delta to a 415 V, 3-phase supply. Calculate for each connection (a) the line and phase voltages and (b) the phase and line currents.

//initializing the variables:
R = 3; // in ohms
XL = 4; // in ohms
VL = 415; // in Volts

//calculation:
//For a star connection:
//IL = Ip
//VL = Vp*(3^0.5)
VLs = VL
Vps = VLs/(3^0.5)
//Impedance per phase,
Zp = (R*R + XL*XL)^0.5
Ips = Vps/Zp
ILs = Ips
//For a delta connection:
//VL = Vp
//IL = Ip*(3^0.5)
VLd = VL
Vpd = VLd
Ipd = Vpd/Zp
ILd = Ipd*(3^0.5)

printf("\n\n Result \n\n")
printf("\n (a)the line voltage for star connection is %.0f V and the phase voltage for star connection is %.0f V and the line voltage for delta connection is %.0f V and the phase voltage for delta connection is %.0f V",VLs,Vps,VLd,Vpd)
printf("\n (b)the line current for star connection is %.0f A and the phase current for star connection is %.0f A and the line current for delta connection is %.0f A and the phase current for delta connection is %.0f A",ILs,Ips,ILd,Ipd)