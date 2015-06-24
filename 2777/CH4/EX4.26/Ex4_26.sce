
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD 

// CHAPTER : 4 : DIRECT CURRENT MACHINES 

// EXAMPLE : 4.26

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

R = 2.0;                        // DC series Motor Resistance between the terminals in Ohms
V1 = 220;                       // Motor Operating voltage in Volts
N1 = 500;                       // Rotation Sped of the DC series Motor in RPM
I1 = 22;                        // Current in Motor in Amphere
N2 = 600;                       // New Rotation Sped of the DC series Motor in RPM


// CALCULATIONS
// For case (a) when magnetic circuit is Unsaturated

E1 = V1 - (I1 * R);                 // Back EmF at N1 Speed in Volts
I2_a = (N2/N1)*I1;                  // Current in Motor at N2 speed in Amphere
E2_a = (E1*I2_a*N2)/(I1*N1);      // Back EmF at N2 Speed in Volts
V2_a = E2_a + (I2_a * R);           // Applied Voltage at N2 Speed in Volts

// For case (b) when magnetic circuit is Saturated

I2_b = ((N2/N1)^2)*I1;              // Current in Motor at N2 speed in Amphere
E2_b = (N2/N1)*E1;                  // Back EmF at N2 Speed in Volts
V2_b = E2_b + (I2_b * R);             // Applied Voltage at N2 Speed in Volts


// DISPLAY RESULTS

disp("EXAMPLE : 4.26 : SOLUTION :-") ;
printf("\n (a.1) Applied Voltage when magnetic circuit is Unsaturated,V2 = %.2f V \n",V2_a);
printf("\n (a.2) Current in Motor when magnetic circuit is Unsaturated, I2 = %.1f A \n",I2_a);
printf("\n (b.1) Applied Voltage when magnetic circuit is Saturated,V2 = %.2f V \n",V2_b);
printf("\n (b.2) Current in Motor when magnetic circuit is Saturated, I2 = %.2f A \n",I2_b);



