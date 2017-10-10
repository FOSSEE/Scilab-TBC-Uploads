clear//

//Variables

IT = 750              //Current (in milli-Ampere)
I1 = 200              //Current (in milli-Ampere)
I3 = 150              //Current (in milli-Ampere)

//Calculation

I2 = IT - (I1 + I3)   //Current through R2 (in milli-Ampere)

//Result

printf("\n Current drawn by R2 branch is  %0.3f  mA.",I2)
