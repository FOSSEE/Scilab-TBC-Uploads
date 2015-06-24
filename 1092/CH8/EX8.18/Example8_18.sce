// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 8: AC DYNAMO TORQUE RELATIONS - SYNCHRONOUS MOTORS
// Example 8-18

clear; clc; close; // Clear the work space and console.

// Given data
kW = 40000 ; // Load on a factory in kW
PF = 0.8 ; // power factor lagging of the load
cos_theta = PF; 
sin_theta = sqrt( 1 - (cos_theta)^2 );

PF_SM = 0.8 ; // power factor leading of the synchronous motor
cos_theta_SM = PF_SM; 
sin_theta_SM = sqrt( 1 - (cos_theta_SM)^2 );
hp = 7500 ; // power rating of the induction motor in hp

PF_IM = 0.75 ; // power factor lagging of the induction motor
cos_theta_IM = PF_IM; 
sin_theta_IM = sqrt( 1 - (cos_theta_IM)^2 );

eta = 91*(1/100) ; // Efficiency of IM

// Calculations
kVA_original = kW / PF ; // Original kVA 
kvar_original = kVA_original * sin_theta ; // Original kvar


kW_IM = ( hp * 746 ) / ( 1000 * eta ) ; // Induction motor kW
kVA_IM = kW_IM / PF_IM ; // Induction motor kVA
kvar_IM = kVA_IM * sin_theta_IM ; // Induction motor kvar

// case a
kW_SM = ( hp * 746 ) / ( 1000 * eta ) ; // Synchronous motor kW
kVA_SM = kW_SM / PF_SM ; // Synchronous motor kVA
kvar_SM = kVA_SM * sin_theta_SM ; // Synchronous motor kvar

kvar_final = kvar_original - kvar_IM - kvar_SM ; // final kvar
kVA_final = kW + %i*(abs(kvar_final)); // final kVA
kVA_final_m = abs(kVA_final);//kVA_final_m = magnitude of kVA_final in kVA
kVA_final_a = atan(imag(kVA_final) /real(kVA_final))*180/%pi;
//kVA_final_a=phase angle of kVA_final in degrees

PF_final = cosd(kVA_final_a); // Final power factor

// Display the result
disp("Example 8-18 Solution : ");

printf(" \n Original kVA = %d kVA \n ", kVA_original );
printf(" \n Original kvar = \n" );disp(%i*kvar_original);
printf(" \n a:");
printf(" \n Synchronous motor kW = %d kW \n ", kW_SM );
printf(" \n Synchronous motor kVA = %.f kVA \n ", kVA_SM );
printf(" \n Synchronous motor kvar = ");disp(-%i*kvar_SM)

printf(" \n Final kvar = ");disp(%i*kvar_final);
printf(" \n Final kVA = " );disp(kVA_final);
printf(" \n Final kVA = %f <%.2f kVA \n ",kVA_final_m,kVA_final_a);

printf(" \n Final PF = %.3f lagging \n ", PF_final );

printf(" \n __________________________________________________________________________");
printf(" \n Power tabulation grid : \n ");
printf(" \n \t\t P \t\t ±jQ \t\t S* ");
printf(" \n \t\t(kW) \t\t(kvar) \t\t(kVA) \t\t cosӨ ");
printf(" \n __________________________________________________________________________");
printf(" \n Original : \t%d \t\tj%.f \t\t%.1d \t\t %.1f lag",kW ,kvar_original ,kVA_original,PF);
printf(" \n Removed  : \t-%.f \t\t-(+j%.f) \t%.f \t\t %.2f lag",kW_IM,kvar_IM,kVA_IM,PF_IM);
printf(" \n Added    : \t+%.f  \t\t-j%.2f     \t%.1f \t\t %.1f lead",kW_SM,abs(kvar_SM),kVA_SM,PF_SM);
printf(" \n Final    : \t%d \t\tj%.2f \t%.1f \t %.3f lag",kW ,kvar_final ,kVA_final_m,PF_final);
printf(" \n __________________________________________________________________________\n\n");

printf(" \n b: ");
printf(" \n In Ex.8-17, a 6148 kVA, unity PF, 7500 hp synchronous motor is needed.");
printf(" \n In Ex.8-18, a 7685 kVA, 0.8 PF leading, 7500 hp synchronous motor is needed.\n");
printf(" \n \t Ex.8-18b shows that a 0.8 PF leading,7500 hp synchronous motor ");
printf(" \n must be physically larger than a unity PF,7500 hp synchronous motor ");
printf(" \n because of its higher kVA rating.");

