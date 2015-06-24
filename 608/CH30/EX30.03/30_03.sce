//Problem 30.03: For the a.c. network shown in Figure 30.7, determine the current flowing in each branch using Kirchhoff’s laws.

//initializing the variables:
E1 = 5 + %i*0; // in volts
E2 = 2 + %i*4; // in volts
Z1 = 3 + %i*4; // in ohm
Z2 = 2 - %i*5; // in ohm
Z3 = 6 + %i*8; // in ohm

//calculation:
//Currents I1 and I2 with their directions are shown in Figure 30.8.
//Two loops are chosen with their directions both clockwise.loop ABEF and loop BCDE,
//using kirchoff rule in 3 loops
//two eqns obtained
//(Z1 + Z3)*I1 - Z3*I2 = E1
//-1*Z3*I1 + (Z2 + Z3)*I2 = E2
I1 = ((Z2 + Z3)*E1 + Z3*E2)/((Z2 + Z3)*(Z1 + Z3) - Z3*Z3)
I2 = -1*(E1 - (Z1 + Z3)*I1)/Z3
I3 = I1 - I2

printf("\n\n Result \n\n")
printf("\n current, I1 is %.2f + (%.2f)i A, current, I2 is  %.2f + (%.2f)i A and current in Z3, I3 is %.3f + (%.3f)i A",real(I1), imag(I1),real(I2), imag(I2),real(I3), imag(I3))