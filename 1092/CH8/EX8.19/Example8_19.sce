// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 8: AC DYNAMO TORQUE RELATIONS - SYNCHRONOUS MOTORS
// Example 8-19

clear; clc; close; // Clear the work space and console.

// Given data
kVA_load = 500 ; // Load of 500 kVA
PF_load = 0.65 ; // Load operates at this PF lagging
cos_theta_load = PF_load ;
sin_theta_load = sqrt(1 - (cos_theta_load)^2);
hp = 200 ; // power rating of the system in hp
eta = 88*(1/100); // Efficiency of the system after adding the load
PF_final = 0.85 ; // Final lagging PF after adding the load

// Calculations
kW_original = kVA_load * cos_theta_load ; // Original kW
kvar_original = kVA_load * sin_theta_load ; // Original kvar

kW_SM = ( hp * 746 ) / ( 1000 * eta ) ; // Synchronous motor kW

// case a
kW_final = kW_original + kW_SM ; // final kW of the system with the motor added
kVA_final = kW_final / PF_final ; // final kVA of the system with the motor added
PF_system = kW_final / kVA_final ; // Final PF of the system with the motor added
cos_theta_system = PF_system ; // Final PF of the system with the motor added
sin_theta_system  = sqrt(1 - (cos_theta_system )^2);

kvar_final = kVA_final * sin_theta_system ; // final kvar of the system with the motor added

// case b
kvar_SM = %i*kvar_final - %i*kvar_original ; // kvar rating of the sychronous motor

kVA_SM = kW_SM + kvar_SM ; // kVA rating of the sychronous motor
kVA_SM_m = abs(kVA_SM);//kVA_SM_m = magnitude of kVA_SM in kVA
kVA_SM_a = atan(imag(kVA_SM) /real(kVA_SM))*180/%pi;
//kVA_SM_a=phase angle of kVA_SM in degrees

PF_SM = cosd(kVA_SM_a); // PF of the sychronous motor

// Display the result
disp("Example 8-19 Solution : ");

printf(" \n Original kW = %.f kW \n ", kW_original );
printf(" \n Original kvar = %.f kvar\n",kvar_original );
printf(" \n Synchronous motor kW = %.1f kW \n ", kW_SM );

printf(" \n a: Final kW = %.1f kW",kW_final);
printf(" \n    Final kVA of the system = %.f kVA",kVA_final);
printf(" \n    System PF = %.2f lagging",PF_system);
printf(" \n    Final kvar of the system = j%d (lagging)kvar\n\n",kvar_final);

printf(" \n b: Synchronous motor kvar = -%.2fj(leading)kvar\n",abs(kvar_SM));
printf(" \n    Synchronous motor kVA = " );disp(kVA_SM);
printf(" \n    Synchronous motor kVA = %.f <%.1f kVA \n ", kVA_SM_m , kVA_SM_a );
printf(" \n    Synchronous motor PF = cos(%.1f) = %.3f leading \n ",kVA_SM_a,PF_SM );

printf(" \n    ________________________________________________");
printf(" \n    Power tabulation grid : \n ");
printf(" \n    \t\t P \t ±jQ \t S* ");
printf(" \n    \t\t(kW) \t(kvar) \t(kVA) \t cosӨ ");
printf(" \n    ________________________________________________");
printf(" \n    Original : \t %d \t +j%.f   %.1d \t %.2f lag",kW_original,kvar_original,kVA_load,PF_load);
printf(" \n    Added    : \t %.1f \t -%.1fj  %.f \t %.4f lead",kW_SM ,abs(kvar_SM),kVA_SM_m,PF_SM);
printf(" \n    Final    : \t %.1f \t +j%.f   %.f     %.2f lag",kW_final,kvar_final,kVA_final,PF_final);
printf(" \n    ________________________________________________");
