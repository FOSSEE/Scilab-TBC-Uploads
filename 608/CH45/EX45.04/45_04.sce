//Problem 45.04:  In the circuit shown in Figure 45.8, a current of 5 A flows from the supply source. Switch S is then opened. Determine (a) the time for the current in the 2 H inductor to fall to 200 mA, and (b) the maximum voltage appearing across the resistor.

//initializing the variables:
i = 5; // in Amperes
L = 2 // in Henry
i1 = 0.2; // in Amperes
R = 10; // in Ohm

//calculation:
//time t
ti = (-1*L/R)*log(i1/i)
//voltage across the resistor is a maximum 
VRm = i*R

printf("\n\n Result \n\n")
printf("\n  time t for the current in the 2 H inductor to fall to 200 mA is %.3f sec",ti)
printf("\n  max voltage across the resistor is %.0f V",VRm)
