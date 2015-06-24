//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 6
//NOISE
clear all;
clc;
printf("EXAMPLE 6.4(PAGENO 283)");

//given
A_1 = 10//voltage gain for first stage
A_2 = 25//volatage gain for second stage
R_i1 = 600//input resistance for first stage in ohms
R_eq1 = 1600//equivalent noise resistance for first stage 
R_01 = 27*10^3//Output resistance for first stage 
R_i2 = 81*10^3//input resistance for second stage
R_eq2 = 10*10^3//Equivalent noise resistance for second stage 
R_02 = 1*10^6//putput resistance for second case

//calculations
R_1 = R_i1 + R_eq1
R_2 = ((R_01*R_i2)/(R_01+R_i2)) + R_eq2
R_3 = R_02
R_eq = R_1 + (R_2/A_1^2) + R_3/(A_1^2 *A_2^2);

//results
printf("\n\nEquivalent input noise resistance = %.2f Ohms",R_eq);
