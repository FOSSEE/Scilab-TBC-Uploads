clc
// Example 3.6.py
// Consider a point in a supersonic flow where the static pressure is 0.4 atm. When
// a pitot tube is inserted in the  at this point, the pressure measured by the
// pitot tube is 3 atm. Calculate the mach number at this point.

// Variable declaration
p1 = 0.4       // static pressure (in atm)
po2 = 3.0      // pressure measured by the pitot tube (in atm)

//Calculations
// from table A2 for po2/p1 = 7.5
M1 = 2.35

// Results 
printf("\n Mach number is %.2f",(M1))

