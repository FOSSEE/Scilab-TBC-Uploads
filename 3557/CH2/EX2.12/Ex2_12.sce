//Example 2.12//
kr=16.16*10^-135;// J m^12 //constant of attraction
ka=10.37*10^-78;//J m^6 //constant of replusion
a0=(2*(kr/ka))^(1/6)
mprintf("a0 = %e m = 0.382nm  (As 1 nano = 10^-9)",a0)
a1=0.382*10^-9;//meter
E=-(ka/a1^6)+(kr/a1^12)
mprintf("\nE = %e J",E)
a=-1.66*10^-21;//J/bond
b=(0.602*10^24);// bonds/mole
Eb=a*b
mprintf("\nEb = %e J/mol  = 0.999 kJ/mol (As 10^3gram = 1Kilogram)",Eb)
