//Variable declaration:
F = 50.0                        //Buoyancy flux of gas (m^4/s^3)
u = 4.0                         //wind speed (m/s)

//Calculation:
xc = 14*F**(5.0/8.0)            //Downward distance (m)
xf = 3.5*xc                     //distance of transition from first stage of rise to the second stage of rise (m)
Dh = 1.6*F**(1.0/3.0)*u**-1*xf**(2.0/3.0)   //Plume rise (m)

//Result:
printf("The plume rise is : %.0f m .",Dh)
