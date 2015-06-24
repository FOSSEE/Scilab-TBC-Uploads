
//Variable declaration
R=20                            //resistance across which voltage is to be calculated(ohms)

//Calculations
a = [35 -20 ; -20 50]   //solving two linear mesh equations
b = [50;-100]
x = a\b
i=x(1)-x(2)           //current through 20 ohms resistor(ohms)
V=20*i                //voltage across 20 ohms(V)

//Results
printf ("i is %.2f",i)
printf ("voltage across 20 ohms is %.1f V",V)
