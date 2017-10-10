//Chapter 4: Radiation
//Example 4-4.3
clc;

//Variable Initialization
c = 3e8             //Speed of light (m/s)
f = 3e9             //Frequency (Hz)

//Calculation
v = 0.6*c           //60% of velocity of light (m/s)
w = 2*%pi*f     //Angular frequency (rad/s)
r = v/w             //Distance (m)

//Result
mprintf("The distance for the specified condition is %.6f m", r)
