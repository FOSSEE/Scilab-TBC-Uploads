clc
Eg=1.43*1.6*10^-19
disp(" energy gap = "+string(Eg)+"Volt") //initializing the value of energy gap.
h=6.624*10^-34
disp(" plank constant = "+string(h)+"joule")//initializing the value of plank constant. 
c=3*10^8
disp(" light speed = "+string(c)+"m/s") //initializing the value of speed of light.
f=(Eg/h)
disp("frequency of radiation emitted ,f=(Eg/h))= "+string(f)+" Hz ")//calculation
lamda=(c/f)
disp("wavelength of radiation emitted,lamda=(c/f))= "+string(lamda)+" metre ")//calculation
