//Problem 19.18: Three similar coils, each having a resistance of 8 ohm  and an inductive reactance of 8 ohm  are connected (a) in star and (b) in delta, across a 415 V, 3-phase supply. Calculate for each connection the readings on each of two wattmeters connected to measure the power by the two-wattmeter method.

//initializing the variables:
R = 8; // in ohms
XL = 8; // in ohms
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
//Power dissipated, P = VL*IL*(3^0.5)*cos(phi)  or  P = 3*Ip*Ip*Rp)
pf = R/Zp
Ps = VLs*ILs*(3^0.5)*pf
//If wattmeter readings are P1 and P2 then P1 + P2 = Pst
Pst = Ps
// Pid = Pi1 - Pi2
phi = acos(pf)
Psd = Pst*tan(phi)/(3^0.5)
//Hence wattmeter 1 reads
Ps1 = (Psd + Pst)/2
//wattmeter 2 reads
Ps2 = Pst - Ps1

//For a delta connection:
//VL = Vp
//IL = Ip*(3^0.5)
VLd = VL
Vpd = VLd
Ipd = Vpd/Zp
ILd = Ipd*(3^0.5)
//Power dissipated, P = VL*IL*(3^0.5)*cos(phi)  or  P = 3*Ip*Ip*Rp)
Pd = VLd*ILd*(3^0.5)*pf
//If wattmeter readings are P1 and P2 then P1 + P2 = Pdt
Pdt = Pd
// Pid = Pi1 - Pi2
Pdd = Pdt*tan(phi)/(3^0.5)
//Hence wattmeter 1 reads
Pd1 = (Pdd + Pdt)/2
//wattmeter 2 reads
Pd2 = Pdt - Pd1

printf("\n\n Result \n\n")
printf("\n (a)When the coils are star-connected the wattmeter readings are %.3E W and %.3E W",Ps1,Ps2)
printf("\n (b)When the coils are delta-connected the wattmeter readings are are %.3E W and %.3E W",Pd1,Pd2)