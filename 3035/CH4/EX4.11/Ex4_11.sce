
// Variable Declaration
h = 5        //Height of conductor above ground(m)
d = 1.5      //Conductor spacing(m)
r = 0.006    //Radius of conductor(m)

// Calculation Section
C_AB = %pi * 8.854*10**-9/log(d/(r*(1+((d*d)/(4*h*h)))**0.5))  //Capacitance with effect of earth(F/km)
C_AB1 = %pi * 8.854*10**-9/log(d/r)                            //Capacitance ignoring effect of earth(F/km)
ch = (C_AB - C_AB1)/C_AB * 100                                          //Change in capacitance with effect of earth(%)


// Result Section
printf('Line capacitance with effect of earth , C_AB = %.3e F/km' ,C_AB)
printf('Line capacitance ignoring effect of earth , C_AB = %.3e F/km' ,C_AB1)
printf('With effect of earth slight increase in capacitance = %.1f percent' ,ch)
