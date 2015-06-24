clc
//to show that for frequency <10^9 Hz ,a sample of silicon will act like a good conductor
sigma=200 //in mhos/m
omega=2*%pi*10^9 
epsilon0=8.85*10^-12              //permittivity in free space
epsilon=12*epsilon0 
sigma1=sigma/(omega*epsilon)         //sigma1=sigma/(omega*epsilon)
disp("sigma1="+string(sigma1)+"unitless")
//if sigma/(omega*epsilon) is greater than 1 , silicon is a good conductor at frequency <10^9 Hz
//to calculate penetration depth
f=10^6 //frequency in Hz
muo=4*%pi*10^-7       //permeability of free space
sigma=200
del=sqrt(2/(2*%pi*f*muo*sigma))
disp("penetration depth is del="+string(del)+"m")
