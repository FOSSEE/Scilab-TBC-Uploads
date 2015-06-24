
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD

// CHAPTER : 7 : SPECIAL MOTORS AND INTRODUCTION TO GENERALIZED MACHINE THEORY

// EXAMPLE : 7.11

clear ; clc ; close ; // Clear the work space and console
 

// GIVEN DATA

s = 9;                                              // Degree per step of the stepper motor
N = 200;                                            // Rotation Speed of the Stepper motor in RPM


// CALCULATIONS

spr = 360/s;                                       // Steps Per Revolution (360 is full revolution)
pps = (N*spr)/60;                                       // Input pulse rate in pulses per second


// DISPLAY RESULTS

disp("EXAMPLE : 7.11: SOLUTION :-");
printf("\n (a) Input pulse rate is %.2f pulses per second \n",pps)
