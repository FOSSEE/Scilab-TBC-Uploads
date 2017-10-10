clc
T0 = 35 // Heat rejection temperature in degree Celsius 
T1 = 420 //  Vapor condensation temperature in degree Celsius 
T1_ = 250 // water vapor temperature in degree Celsius 
printf("\n Example 8.1")
f = ((T0+273)*((T1+273)-(T1_+273)))/((T1_+273)*((T1+273)-(T0+273)))// fraction of energy lost
printf("\n The fraction of energy that becomes unavailable due to irreversible heat transfer is %f ",f)
//The answers vary due to round off error
