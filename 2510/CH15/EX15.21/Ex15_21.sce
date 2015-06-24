//Variable declaration:
a1 = 0.00044                //Term 'a' for U_clean
a2 = 0.00089                //Term 'a' for U_dirty

//Calculation:
Rs = a2 - a1                //Resistance associated with the scale
hs = 1.0/Rs                 //Scale film coefficient (Btu/h.ft^2..)

//Result:
printf("The scale film coefficient neglecting the wall resistance is: %.0f Btu/h.ft^2.. .",hs)
