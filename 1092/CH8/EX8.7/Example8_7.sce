// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 8: AC DYNAMO TORQUE RELATIONS - SYNCHRONOUS MOTORS
// Example 8-7

clear; clc; close; // Clear the work space and console.

// Given data
P_o = 2000 ; // Total power consumed by a factory in kW from the transformer
cos_theta = 0.6 ; // 0.6 lagging power factor at which power is consumed -
// - from the transformer
sin_theta = sqrt(1 - (cos_theta)^2);
theta = -acosd(0.6); // power factor angle at which power is consumed -
// - from the transformer in degrees

V_L = 6000 ; // Primary line voltage of a transformer in volt

P = 750 ; // kW expected to be delivered by the dc motor-generator

hp = 1000 ; // hp rating of the motor(induction or synchronous)
V_L_m = 6000 ; // Line voltage of a synchronous(or induction) motor in volt
cos_theta_sm = 0.8 ; // 0.8 leading power factor of the synchronous motor
theta_sm = acosd(0.8); // power factor angle of the synchronous motor in degrees

cos_theta_im = 0.8 ; // 0.8 lagging power factor of the induction motor
theta_im = -acosd(0.8); // power factor angle of the induction motor in degrees

eta = 0.92 ; // Efficiency of each motor

// Calculations
// case a : using Induction Motor(IM)
P_m = ( hp * 746 ) / eta ; // Induction(or synchronous) motor load in W
I_1 = P_m / ( sqrt(3) * V_L_m * cos_theta_im ); // Lagging current drawn by IM in A

I_1_prime = P_o * 1000 / ( sqrt(3) * V_L * cos_theta ); // Original lagging  -
// - factory load current in A

// Total load current in A using Induction Motor :
I_TM = I_1*(cosd(theta_im) + %i*sind(theta_im)) + I_1_prime*(cosd(theta) + %i*sind(theta)) ; 
I_TM_m = abs(I_TM);//I_TM_m = magnitude of I_TM in A
I_TM_a = atan(imag(I_TM) /real(I_TM))*180/%pi;//I_TM_a=phase angle of I_TM in degrees

PF_im = cosd(I_TM_a); // Overall PF using induction motor

// case b: using synchronous motor
I_s1 = P_m / ( sqrt(3) * V_L_m * cos_theta_sm ); // Lagging current drawn by IM in A

// Total load current in A using synchronous motor :
I_TSM = I_s1*(cosd(theta_sm) + %i*sind(theta_sm)) + I_1_prime*(cosd(theta) + %i*sind(theta)) ; 
I_TSM_m = abs(I_TSM);//I_TSM_m = magnitude of I_TSM in A
I_TSM_a = atan(imag(I_TSM) /real(I_TSM))*180/%pi;//I_TSM_a=phase angle of I_TSM in degrees

PF_sm = cosd(I_TSM_a); // Overall PF using Synchronous motor

// case c 
percent_I_L = ( I_TM_m - I_TSM_m ) / I_TM_m * 100 ; // Percent reduction in  -
// - total load current in percent

// Display the results
printf("Note : case a,I1 calculated is around 97.53 A instead of 47.53 A(textbook).\n")
printf(" Note : case b,Actual I_s1 imaginary part is around 58.52 instead of ");
printf(" \n        52.52(textbook)so slight variation in I_TSM and percent ")
printf(" \n        reduction in total load current.\n")

disp("Example 8-7 Solution : ");
printf(" \n a: Induction(or sunchronous) motor load");
printf(" \n    P_m = %.f W ",P_m);
printf(" \n    Lagging current drawn by the IM = I1");
printf(" \n    I_1 = %.2f <-%.2f A \n",I_1,acosd(cos_theta_sm));
printf(" \n    I_1 in A = ");disp(I_1*cosd(-36.87)+%i*I_1*sind(-36.87));
printf(" \n    Original lagging factory load current = I_1_prime");
printf(" \n    I_1_prime in A = ");disp(I_1_prime*cosd(theta)+%i*I_1_prime*sind(theta));
printf(" \n    I_1_prime = %.1f <-%.2f A \n",I_1_prime,acosd(cos_theta));
printf(" \n    Total load current = motor load + factory load");
printf(" \n    I_TM = I_1 + I_1_prime\n");
printf(" \n    I_TM in A = ");disp(I_TM);
printf(" \n    I_TM = %.1f <%.1f A \n ",I_TM_m , I_TM_a );
printf(" \n    Overall system PF = %.4f lagging \n ", PF_im );

printf(" \n b: Synchronous motor load\n    I_s1 = %.2f <%.2f A\n",I_1,acosd(cos_theta_sm));
printf(" \n    I_s1 in A = ");disp(I_s1*cosd(36.87)+%i*I_s1*sind(36.87));
printf(" \n    Total load current : I_TSM = I_s1 + I_1_prime \n");
printf(" \n    I_TSM in A = ");disp(I_TSM);
printf(" \n    I_TSM = %.1f <%.1f A \n ",I_TSM_m , I_TSM_a );
printf(" \n    Overall system PF = %.1f lagging \n ", PF_sm );

printf(" \n c: Percent reduction in total load current = %.1f percent \n",percent_I_L);

printf(" \n d: PF improvement: Using the synchronous motor ( in lieu of the IM)");
printf(" \n    raises the total system PF from %.4f lagging to %.1f lagging.",PF_im,PF_sm);


