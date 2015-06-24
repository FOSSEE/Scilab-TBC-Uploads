//Problem 20.28: A current transformer has a single turn on the primary winding and a secondary winding of 60 turns. The secondary winding is connected to an ammeter with a resistance of 0.15 ohm. The resistance of the secondary winding is 0.25 ohm. If the current in the primary winding is 300 A, determine (a) the reading on the ammeter, (b) the potential difference across the ammeter and (c) the total load (in VA) on the secondary.

//initializing the variables:
N1 = 1; // prim turns
N2 = 60; // sec turns
I1 = 300; // in amperes
Ra = 0.15; // in ohms
R2 = 0.25; // in ohms

//calculation:
//Reading on the ammeter,
I2 = I1*(N1/N2)
//P.d. across the ammeter = I2*RA, where RA is the ammeter resistance
pd = I2*Ra
//Total resistance of secondary circuit
Rt = Ra + R2
//Induced e.m.f. in secondary
V2 = I2*Rt
//Total load on secondary
S = V2*I2

printf("\n\n Result \n\n")
printf("\n (a)the reading on the ammeter is %.0f A ",I2)
printf("\n (b)potential difference across the ammeter is %.2f V ",pd)
printf("\n (c)total load (in VA) on the secondary is %.0f VA ",S)