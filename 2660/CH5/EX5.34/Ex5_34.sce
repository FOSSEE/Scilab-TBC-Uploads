clc
st1 = 15 // set up time for engine lathe in min.
ut1 = 15 // unit time for engine lathe in min.
st2 = 90 // set up time for automatic lathe in min.
ut2 = 1.5 // unit time for engine lathe in min.
q = (st2-st1)/(ut1-ut2) // quantity of production
printf("\n The point at which the automatic lathe will be justified = %0.2f " , q)
// Answers vary due to round off error
