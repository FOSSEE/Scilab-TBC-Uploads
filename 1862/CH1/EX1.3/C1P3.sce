
clear
 clc
//to find fractional and percentage uncertainty in your weight
//to find fractional and percentage uncertainty in cat's weight

// GIVEN::

//your weight
w1 = 119 //in lbs
// your and cat's combined weight
w2 = 128 // in lbs

// SOLUTION:

//fractional uncertainty in your weight
u1 = (1/119)
// percentage uncertainty in your weight
u2 = u1*100 //percentage
//fractional uncertainty in cat's weight
u3 = (1/9)
//percentage uncertainty in cat's weight
u4 = u3*100 //percentage
 printf ("\n\n Fractional uncertainty in your weight u1 =\n\n %.3f" ,u1);
 printf ("\n\n Percentage uncertainty in your weight u2 =\n\n %.1f percent" ,u2);
 printf ("\n\n Fractional uncertainty in cats weight =\n\n %.2f" ,u3);
 printf ("\n\n Percentage uncertainty in cats weight =\n\n %1i percent" ,u4);
