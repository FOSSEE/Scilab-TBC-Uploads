clear//

//Variables

Ps = 500.0                   //Power of stereo system (in watt)
Pa = 2400.0                  //Power of air conditioner (in watt)
t = 3                        //time (in hours) 

//Calculation

P = (Ps + Pa)/1000           //Total power consumed (in kilowatt)
W = P * t                    //Energy used (in kilowatthour)

//Result

printf("\n The energy used is  %0.3f  kWh.",W)
