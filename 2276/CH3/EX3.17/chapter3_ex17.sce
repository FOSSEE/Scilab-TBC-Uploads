clc
clear

//input
//for a series motor
i1=40;//current in amperes
t1=110;//torque in newton meter
t2=75;//torque in newton meter

//calculations
//it assumed that up to a current of 50A the magnetizing curve for the motor is linear
i2=((t2/t1)*(i1^2))^0.5;//required torque in newton meter

//ouput
mprintf('the current to produce a total torque of 75Nm is %3.0f A',i2)
