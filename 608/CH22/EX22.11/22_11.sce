//Problem 22.11: Determine for the induction motor in problem 22.10 at full load, (a) the rotor current, (b) the rotor copper loss, and (c) the starting current.

//initializing the variables:
V = 415; // in Volts
f = 50 ; // in Hz
nr = 24; // in rev/sec
p = 4/2; // no. of pole pairs
R2 = 0.35; // in Ohms
X2 = 3.5; // in Ohms
tr = 0.85; // turn ratio N2/N1
m = 3; // no. of phases

//calculation:
//ns is the synchronous speed, f is the frequency in hertz of the supply to the stator and p is the number of pairs of poles.
ns = f/p
//The slip, s
s = ((ns - nr)/ns)*100 // in percent
//Phase voltage, E1 = V/(3^0.5)
E1 = V/(3^0.5)
//rotor current,
Ir = (s/100)*E1*tr/((R2^2 + (X2*(s/100))^2)^0.5)
//Rotor copper loss 
Pcl = m*R2*(Ir^2)
//starting current,
ss =1
I2 = ss*tr*E1/((R2^2 + (X2*ss)^2)^0.5)

printf("\n\n Result \n\n")
printf("\n(a)rotor current is %.2f A",Ir)
printf("\n(b)Total copper loss is %.2f W",Pcl)
printf("\n(c)starting current is %.2f A",I2)