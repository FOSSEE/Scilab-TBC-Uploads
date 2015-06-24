//Problem 35.05: Determine the value of the load resistance R shown in Figure 35.5 that gives maximum power dissipation and calculate the value of this power.

//initializing the variables:
V = 20; // in volts
R1 = 5; // in ohm
R2 = 15; // in ohm

//calculation: 
//R is removed from the network as shown in Figure 35.6
//P.d. across AB, E
E = (R2/(R1 + R2))*V
//Impedance ‘looking-in’ at terminals AB with the source removed is given by
r = R1*R2/(R1 + R2)
//The equivalent Th´evenin circuit supplying terminals AB is shown in Figure 35.7. From condition (2), for maximum power transfer
R = r
//Current I flowing in the load is given by
I = E/(R + r)
//maximum power transferred,
P = R*I^2

printf("\n\n Result \n\n")
printf("\n (a)maximum power transfer occurs when R is %.2f ohm",R)
printf("\n (b) maximum power delivered is %.0f W",P)