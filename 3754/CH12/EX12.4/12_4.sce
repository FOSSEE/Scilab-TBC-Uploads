clear//

//Variables

I300 = 10 * 10**-6             //Current at 300 kelvin (in Ampere)
T1 = 300                       //Temperature (in kelvin)
T2 = 400                       //Temperature (in kelvin)

//Calculation

I400 = I300 * 2**((T2-T1)/10)  //Current at 400 kelvin (in Ampere)  

//Result

printf("\n Current at 400 k is  %0.1f  mA.",I400*10**3)
