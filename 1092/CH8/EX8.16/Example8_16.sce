// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 8: AC DYNAMO TORQUE RELATIONS - SYNCHRONOUS MOTORS
// Example 8-16

clear; clc; close; // Clear the work space and console.

// Given data
// Calculated values as per Ex.8-15 are as follows
S_o_conjugate = 2676.5*exp(%i*31.79*(%pi/180)); // Original kVA rating
S_o_conjugate_m = abs(S_o_conjugate);//S_o_conjugate_m = magnitude of S_o_conjugate in kVA
S_o_conjugate_a = atan(imag(S_o_conjugate) /real(S_o_conjugate))*180/%pi;
//S_o_conjugate_a=phase angle of S_o_conjugate in degrees

S_a_conjugate = 658.86*exp(%i*36.87*(%pi/180)); // Added kVA rating
S_a_conjugate_m = abs(S_a_conjugate);//S_a_conjugate_m = magnitude of S_a_conjugate in kVA
S_a_conjugate_a = atan(imag(S_a_conjugate) /real(S_a_conjugate))*180/%pi;
//S_a_conjugate_a=phase angle of S_a_conjugate in degrees

S_f_conjugate = -3333.3*exp(%i*32.792687*(%pi/180)); // Final kVA rating
S_f_conjugate_m = abs(S_f_conjugate);//S_f_conjugate_m = magnitude of S_f_conjugate in kVA
S_f_conjugate_a = atan(imag(S_f_conjugate) /real(S_f_conjugate))*180/%pi;
//S_f_conjugate_a=phase angle of S_f_conjugate in degrees

// Calculations
kVA_total = S_o_conjugate + S_a_conjugate + S_f_conjugate ; // Tellegan's theorem
kVA_total_m = abs(kVA_total);//kVA_total_m = magnitude of kVA_total in kVA
kVA_total_a = atan(imag(kVA_total) /real(kVA_total))*180/%pi;
//kVA_total_a=phase angle of kVA_total in degrees

// Display the result
disp("Example 8-16 Solution : ");
printf(" \n From the solution to Ex.8-15, we have ");
printf(" \n S*o = %.1f <%.2f kVA \n ", S_o_conjugate_m,S_o_conjugate_a );
printf(" \n S*a = %.1f <%.2f kVA \n ", S_a_conjugate_m,S_a_conjugate_a );
printf(" \n S*f = %.1f <%.2f kVA \n ", S_f_conjugate_m,S_f_conjugate_a );

printf(" \n Validity check ");
printf(" \n S*o + S*a + S*f =  ");
disp(S_o_conjugate),printf("  +"),disp(S_a_conjugate),printf("  +"),disp(S_f_conjugate);
printf(" \n   = %d ",kVA_total );
printf(" \n Hence, Tellegen`s theorem is proved");
