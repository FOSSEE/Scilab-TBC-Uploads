//Chapter 20, Problem 18
clc;
R = 8;                      //resistance
XL = 8;                     //inductive reactance
VL = 415;                   //supply voltage

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


printf("\n\n (a)When the coils are star-connected the wattmeter readings are %.3f kW and %.3f kW",Ps1/1000,Ps2/1000)
printf("\n\n (b)When the coils are delta-connected the wattmeter readings are are %.3f kW and %.3f kW",Pd1/1000,Pd2/1000)
