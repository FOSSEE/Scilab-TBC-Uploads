clear;
clc;

// Stoichiometry
// Chapter 6
// Stoichiometry and Unit Operations


// Example 6.5
// Page 356
printf("Example 6.5, Page 356 \n \n");

// solution

//(a)
printf("(a) \n \n")
// basis 50000 m^3/h of gas mix at 295.5K 100kPa
v = 24.57 //m^3/kmol sp vol of gas at 295.5K and 100kPa
n1 = 50000/v // kmol/h    flow of incoming gas
NO2in = n1*.0546
N2O4in = n1*.0214
N2in = n1-NO2in-N2O4in
//N2 is unaffected 
n2 = 1880.34/.95 //kmol/h   outgoing gas flow
// using tables 6.3 and 6.4 on page 357
NO2rem = NO2in - (n2*.0393)
N2O4rem = N2O4in - (n2*.0082)
// rxn (ii)
NaOHreac2 = 2*40*N2O4rem
NaNO2pro2 = 69*N2O4rem
NaNO3pro2 = 85*N2O4rem
H2Opro2 = 18*N2O4rem
// rxn (iii)
NO2reac3 = 3*n2*.0025
NaOHreac3 = 2*4.95*40
NaNO3pro3 = 2*4.95*85
H2Opro3 = 4.95*18
NO2abs2 = 33.33-NO2reac3
NaOHreac1 = 18.48*40
NaNO2pro1 = 69*NO2abs2/2
NaNO3pro1 = 85*NO2abs2/2
H2Opro1 = 18*NO2abs2/2
NaNO2t = NaNO2pro2 + NaNO2pro1
NaNO3t = NaNO3pro2+NaNO3pro3
H2Ot = H2Opro1+H2Opro2+H2Opro3
NaOHt = NaOHreac1+NaOHreac2+NaOHreac3
liq = 37500 //kg/h
NaOHin = liq*.236
NaOHout = NaOHin-NaOHt
moist = n2*.045*18
water = liq-NaOHin-H2Ot-moist //kg/h
printf("Composition of final liquor : \n Component           mi (kg/h) \n NaOH                  "+string(NaOHout)+" \n NaNO2                 "+string(NaNO2t)+" \n NaNO3                 "+string(NaNO3t)+" \n H2O                   "+string(water)+" \n \n \n (b)")
//(b)
//heat effect of scrubbing
//using tables 6.6 and 6.7
//fi1 = integ{59865.7+4545.8+10^-3 *T + 15266.3*10^-6*T^2-705.11*10^-9*T^3}
fi1 = -155941.3/3600 //kW
//similarly
fi2 = 75.778 //kW
dH1 = (-346.303-450.1-285.83-(2*(-468.257)+2*33.18))/2 //kJ/mol NO2
dH2 = -346.303-450.1-285.83-(2*(-468.257)+9.16) //kJ/mol N2O4
dH3 = (2*(-450.1)-285.83+90.25-(2*(-468.257)+3*33.18))/3 // kJ/mol NO2
dHdil = -469.837-(-468.257) //kJ/mol NaOH
fi3 = (dH1*1000*18.48+dH2*1000*27.32+dH3*1000*14.85+dHdil*1000*138.23)/3600 //kW
fi4 = -fi1+fi2+fi3
printf("Heat efeet of scrubbing system = "+string(fi4)+" kW.")







