clc
//to calculate frequency 
muo=4*%pi*10^-7            //permeability of free space
sigma=4.3  // in mhos/m
del=0.1     //skin depth in m
f=2/(2*%pi*muo*del^2)
disp("frequency is f="+string(f)+"Hz")
//value of frequency is given incorrect in the book 
//show that for frequencies less than 10^8 ,it can be considered as good conductor
epsilon=80*8.854*10^-12
f=10^8                                    //frequency in Hz
sigma=4.3
//formula is sigma/(omega*epsilon)>4.3/(2*%pi*10^8*80*epsilon)
sigma1=sigma/(2*%pi*f*epsilon)  //where sigma1=sigma/(omega*epsilon)
disp("sigma1="+string(sigma1)+"unitless")
//the ocean water to be good conductor ,the value of sigma/(omega*epsilon) should be greater than 1
