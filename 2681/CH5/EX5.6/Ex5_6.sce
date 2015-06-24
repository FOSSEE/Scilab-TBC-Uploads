//output power of cable
//given
clc
alpha=0.28//db/m//attenuation
alpha_50m=0.28*50//db//attenutaion of 50 m cable
pi=0.4//watt//input power//ERROR
po=pi/(10^((alpha_50m)/10))//watt//output power
disp(po*1000,'the output power of 50m in mW ')//mW
//ERROR in calculation of the book as pi=0.04  
