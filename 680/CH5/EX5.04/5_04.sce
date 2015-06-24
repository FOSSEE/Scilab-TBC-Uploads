//Problem 5.04:

//initializing the variables:
MWCS2 = 76.14;
MWSO2 = 64.07;
MWCO2 = 44;
wCS2 = 500; // in lb
wO2 = 225; // in lb
MWO2 = 32;

//calculation:
mr1 = wCS2/MWCS2
mr2 = wO2/MWO2
mp1 = mr2/3
m1r = mp1*MWCS2
mp2 = mr2*1/3
m2p = mp2*MWCO2
mp3 = mr2*2/3
m3p = mp3*MWSO2

printf("\n\nResult\n\n")
printf("\n %.0f lb CO2 produced and %.0f lb SO2 produced",m2p,m3p)