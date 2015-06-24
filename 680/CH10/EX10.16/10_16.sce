//Problem 10.16:

//initializing the variables:
c = 0.25
mo = 0.35
w = 0.15
in = 0.25
ql = 0.05
co2 = 0.118
co = 13; // in ppm
o2 = 0.104
NHVc = 14000; // in Btu/lb
NHVmo = 25000; // in Btu/lb
NHVw = 0; // in Btu/lb
NHVin = -1000; // in Btu/lb

//calculation:
NHV = c*NHVc + w*NHVw + mo*NHVmo + in*NHVin
EA = (1 - ql)*o2*100/(21-o2*100)
T = 60 + NHV/(0.325*[1 + (1+EA)*7.5E-4*NHV])

printf("\n\nResult\n\n")
printf("\n the theoretical flame temperature is %.0f deg F",T)