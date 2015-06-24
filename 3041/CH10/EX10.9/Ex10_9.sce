
//Variable declarations
syms V1 V2


//Calculations
V = 0.3*V1                                               //voltage(V)
I1 = 0.007*V1                                           //current 
y11 = I1/V1                                             //y parameter

I2 = -V/40                                               //current     
y21 = I2/V1                                              //y parameter

I2 = V2/(((40+100)*200.)/((40+100)+200.))                //y parameter
y22 = I2/V2          //incorrect answer in textbook       //y parameter

I1 = (-I2*200)/300                                       //current    
y12 = I1/V2         //incorrect answer in textbook        //y parameter

//Results
disp ("mho" , y11+y12 ,"y11+y12 is")
disp ("mho" , y22+y12 ,"y22+y12 is")
disp ("mho" , y21-y12 ,"y21-y12 is")
disp ( "\n(The difference in answers is due to the y12 and y21 values calculated wrongly in the textbook)")
