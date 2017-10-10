//Chapter 4: Radiation
//Example 4-4.2
clc;

//Variable Initialization
v = 3e8         //Speed of light(m/s)
f = 10e6        //Frequency (Hz)

//Calculation
w = 2*%pi*f     //Angular frequency(rad/s)
r = v/w             //Distance (m)

//Result
mprintf("The distance for the specified condition is %.2f m",r)
