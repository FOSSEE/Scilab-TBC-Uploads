//Chapter 11: Broadband and Frequency-Independent Antennas
//Example 11-7.1
clc;

//Variable Initialization
gain_dbi = 7.0        //Gain (dBi)
bandwidth = 4          //Relative bandwidth (unitless)
s_lambda = 0.15       //Spacing (lambda)
k = 1.2               //Scale constant (unitless)

//Calculation
alpha = atan((1-1/k)/(4*s_lambda))*180/%pi   //Apex angle (degrees)
n = round(log(bandwidth)/log(k))    //Number of elements(unitless)
n =n + 1
n =n + 2      //Number of elements considering conservative design (unitless)

//Result
mprintf("The apex angle is %.1f degrees",alpha)
mprintf("\nThe number of elements is %d", n)
