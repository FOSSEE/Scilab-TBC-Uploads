//Example 8.7//
//(a)
a=2.70;//Mg/m^3 //Density of aluminium (From appendix 1)
b=6320;//m/s //velocity of sound
ZAl=a*b
mprintf("ZAl = %e Mg/(m^2s)",ZAl)
a1=7.85;//Mg/m^3 //Density of Manganese (From Appendix 1)
b1=5760;//m/s //Velocity of sound
Zst=a1*b1
mprintf("\n Zst = %e Mg/(m^2s)",Zst)
Ir=[(Zst-ZAl)/(Zst+ZAl)]^2
mprintf("\n Ir = %f ",Ir)

//(b) For the reverse direction of ultrasonic-pulse travel
Ir1=[(ZAl-Zst)/(ZAl+Zst)]^2
mprintf("\n Ir1 = %f ",Ir1)
