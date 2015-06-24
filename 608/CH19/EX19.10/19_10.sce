//Problem 19.10: Three identical coils, each of resistance 10 ohm and inductance 42 mH are connected (a) in star and (b) in delta to a 415 V, 50 Hz, 3-phase supply. Determine the total power dissipated in each case.

//initializing the variables:
R = 10; // in ohms
L = 0.042; // in Henry
VL = 415; // in Volts
f = 50; // in Hz

//calculation:
//For a star connection:
//IL = Ip
//VL = Vp*(3^0.5)
XL = 2*%pi*f*L
Zp = (R*R + XL*XL)^0.5
VLs = VL
Vps = VLs/(3^0.5)
//Impedance per phase,
Ips = Vps/Zp
ILs = Ips
//Power dissipated, P = VL*IL*(3^0.5)*cos(phi)  or  P = 3*Ip*Ip*Rp)
pfs = R/Zp
Ps = VLs*ILs*(3^0.5)*pfs

//For a delta connection:
//VL = Vp
//IL = Ip*(3^0.5)
VLd = VL
Vpd = VLd
Ipd = Vpd/Zp
ILd = Ipd*(3^0.5)
//Power dissipated, P = VL*IL*(3^0.5)*cos(phi)  or  P = 3*Ip*Ip*Rp)
pfd = R/Zp
Pd = VLd*ILd*(3^0.5)*pfd

printf("\n\n Result \n\n")
printf("\n total power dissipated in star is %.1E W and in delta is %.2E W",Ps, Pd)