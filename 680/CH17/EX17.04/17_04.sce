//Problem 17.04:

//initializing the variables:
e = 0.5
m = 2200; // in kg
sigma = 5.67E-8; // in J/m2.K4.s
DH0fp = -103.85; // in kJ/gmol
DH0fo = 0; // in kJ/gmol
DH0fn = 0; // in kJ/gmol
DH0fc = -393.51; // in kJ/gmol
DH0fw = -241.826; // in kJ/gmol
Cpp = 0; // in J/gmol.K
Cpo = 33.635; // in J/gmol.K
Cpn = 31.840; // in J/gmol.K
Cpc = 50.919; // in J/gmol.K
Cpw = 39.672; // in J/gmol.K
p = 50; // psig
T = 25; // in deg C
R = 1.987; // in cal/gmol.K
I = 10; // in kW/m2
i = 4; // kW/m2

//calculation:
mO2 = m*2.2*10*32*2/44
mt = mO2 + m*2.2
D = 9.56*(mt)^0.325
t = 0.196*mt^0.349
DH0 = (3*DH0fc + 4*DH0fw -5*DH0fo - DH0fp)*1000*1000*m/44 // in J
np = m/44
no = 5*np
nc = 3*np
nw = 4*np
nn = 500*0.79/0.21
DT = DH0/((no*Cpo + nw*Cpw + nc*Cpc + nn*Cpn)*1000)
T2 = abs(DT) + T + 273
rsq = (D/(3.048*2))^2*(e*sigma*(T2^4)/I)
r = (rsq*2.7778E-7*3600)^0.5*10/3
ri = ((D/(3.048*2))^2*(e*sigma*(T2^4)/i)*2.7778E-7*3600)^0.5*10/3

printf("\n\nResult\n\n")
printf("\n the size of the fireball is %.0f ft and duration of the fireball is %.1f sec, for I = 10 kW/m2 r = %.0f ft and for I = 4 kW/m2 r = %.0f ft ",D,t,r, ri)
