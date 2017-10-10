clc; funcprot(0);
//Example 17.2 Time to Climb Altitude
//Variable Initialisation
RC0 = 1000;             //Rate of climb at sea level
H = 15000;              //Absolute Ceiling
h = 7000;               // Height to climb

//Calculation
t = H*log(H/(H-h))/RC0;
//Results
disp(t,"Time to climb (min) : ");
