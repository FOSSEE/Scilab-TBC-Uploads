clear//

//Variables

hib = 28.0                   //hib (in ohm)
hfb = -0.98                  //hfb
hrb = 5.0 * 10**-4           //hrb
hob = 0.34 * 10**-6          //hoh (in Siemen)
rL = 1.2 * 10**3             //a.c. load resistance (in ohm)
RS = 0.0                     //Source resistance (in ohm)

//Calculation

Ai = -(hfb/(1 + hob * rL))   //Current gain
Ri = hib + hrb * Ai * rL     //Input resistance (in ohm)
dh = hib * hob - hrb * hfb   //change in h
Ro = (RS + hib)/(RS*hib + dh)//Output resistance (in ohm)
Av = Ai * rL / Ri            //Voltage gain

//Result

printf("\n The value of input resistance is  %0.1f  ohm.\nThe value of output resistance is  %0.0f  kilo-ohm.\nThe value of current gain is  %0.2f  .\nThe value of voltage gain is  %0.0f  .",Ri,Ro*10**-3,Ai,Av)
