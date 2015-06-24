// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 7: PARALLEL OPERATION
// Example 7-11

clear; clc; close; // Clear the work space and console.

// Given data
// writing supply voltage in exponential form as follows
// %pi/180 for degrees to radians conversion
V_AB = 100 * expm(%i * 0*(%pi/180) ); // voltage supplied across A & B in volt
V_BC = 100 * expm(%i * -120*(%pi/180) ); // voltage supplied across B & C in volt
V_CA = 100 * expm(%i * 120*(%pi/180) ); // voltage supplied across C & A in volt

disp("Example 7-11 : ");
printf("\n Writing two mesh equations for I_1 and I_2 in fig.7-23a yields following\n array :"); 
printf(" \n  I_1 \t\t I_2 \t\t V ");
printf(" \n ____________________________________________");
printf(" \n  6 + j0 \t -3 + j0 \t 100 + j0 ");
printf(" \n -3 + j0 \t 3 - j4 \t -50 - j86.6 ");

// Calculations
A = [ (6+%i*0) (-3+%i*0) ; (-3+%i*0) (3-%i*4) ]; // Matrix containing above mesh eqns array
delta = det(A); // Determinant of A

// case a 
I_1 = det( [ (100+%i*0) (-3+%i*0) ; (-50-%i*86.60) (3-%i*4) ] ) / delta ;
// Mesh current I_1 in A 
I_1_m = abs(I_1);//I_1_m=magnitude of I_1 in A
I_1_a = atan(imag(I_1) /real(I_1))*180/%pi;//I_1_a=phase angle of I_1 in degrees

I_2 = det( [ (6+%i*0) (100+%i*0) ; (-3+%i*0) (-50-%i*86.6) ] ) / delta ;
// Mesh current I_2 in A 
I_2_m = abs(I_2);//I_2_m=magnitude of I_2 in A
I_2_a = atan(imag(I_2) /real(I_2))*180/%pi;//I_2_a=phase angle of I_2 in degrees

// case b
I_A = I_1 ; //  Line current I_A in A
I_A_m = abs(I_A);//I_A_m=magnitude of I_A in A
I_A_a = atan(imag(I_A) /real(I_A))*180/%pi;//I_A_a=phase angle of I_A in degrees

I_B = I_2 - I_1 ; //  Line current I_B in A
I_B_m = abs(I_B);//I_B_m=magnitude of I_B in A
I_B_a = atan(imag(I_B) /real(I_B))*180/%pi - 180;//I_B_a=phase angle of I_B in degrees

I_C = -I_2 ; //  Line current I_C in A
I_C_m = abs(I_C);//I_C_m=magnitude of I_C in A
I_C_a = 180 + atan(imag(I_C) /real(I_C))*180/%pi;//I_C_a=phase angle of I_C in degrees

// case c
Z_A = 3 * expm(%i * 0*(%pi/180) ); // Impedance in line A in ohm
Z_B = 3 * expm(%i * 0*(%pi/180) ); // Impedance in line B in ohm
Z_C = 4 * expm(%i * -90*(%pi/180) ); // Impedance in line C in ohm

V_AO = I_A * Z_A ; // Phase voltage V_AO in volt
V_AO_m = abs(V_AO);//V_AO_m=magnitude of V_AO in volt
V_AO_a = atan(imag(V_AO) /real(V_AO))*180/%pi;//V_AO_a=phase angle of V_AO in degrees

V_BO = I_B * Z_B ; // Phase voltage V_BO in volt
V_BO_m = abs(V_BO);//V_BO_m=magnitude of V_BO in volt
V_BO_a = atan(imag(V_BO) /real(V_BO))*180/%pi - 180;//V_BO_a=phase angle of V_BO in degrees

V_CO = I_C * Z_C ; // Phase voltage V_CO in volt
V_CO_m = abs(V_CO);//V_CO_m=magnitude of V_CO in volt
V_CO_a = atan(imag(V_CO) /real(V_CO))*180/%pi;//V_CO_a=phase angle of V_CO in degrees

// Display the results
disp("Solution : ");
printf(" \n a: I_1 in A = ");disp(I_1);
printf(" \n    I_1 = %.2f <%.2f A \n ",I_1_m, I_1_a );
printf(" \n    I_2 in A = ");disp(I_2);
printf(" \n    I_2 = %.2f <%.2f A\n ",I_2_m, I_2_a );

printf(" \n b: I_A in A = ");disp(I_1);
printf(" \n    I_A = %.2f <%.2f A\n",I_A_m, I_A_a );

printf(" \n    I_B in A = ");disp(I_B);
printf(" \n    I_B = %.2f <%.2f A\n",I_B_m, I_B_a );

printf(" \n    I_C in A = ");disp(I_C);
printf(" \n    I_C = %.2f <%.2f A \n",I_C_m,  I_C_a );

printf(" \n c: V_AO = %.2f <%.2f V",V_AO_m, V_AO_a );
printf(" \n    V_BO = %.2f <%.2f V",V_BO_m, V_BO_a );
printf(" \n    V_CO = %.2f <%.2f V\n",V_CO_m, V_CO_a );

printf(" \n d: The phasor diagram is shown in Fig.7-23b, with the phase voltages");
printf(" \n    inscribed inside the (equilateral) triangle of given line voltages");
