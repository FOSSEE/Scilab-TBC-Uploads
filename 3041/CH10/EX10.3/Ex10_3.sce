
//Calculations
a = [7 -3 -4 ; -3 6 -2 ; -4 -2 11]  //solving three linear mesh equations
b = [-11;3;25]
x = a\b

v=x(3) - x(2)                                  //voltage across 2mho conductance(V)

//Results
printf ("v is %.1f V",v)
