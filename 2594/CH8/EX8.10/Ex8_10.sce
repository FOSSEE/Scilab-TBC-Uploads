clc
L=1.25*10^-4
disp("L = "+string(L)+" cm") //initializing value of length of channel.
un=600
disp("un = "+string(un)+"cm^2/V-s") //initializing value of mobility of n-channel MOS transistor.
Co=6.9*10^-9
disp("Co = "+string(Co)+"F/cm^2") //initializing value of capacitance per unit area .
VT=0.60
disp("VT = "+string(VT)+" V") //initializing value of threshold Voltage.
Vgs=4
disp("Vgs = "+string(Vgs)+" V") //initializing value of gate to source voltage.
W=12*10^-4
disp("W = "+string(W)+"cm") //initializing value of width of channel.
Id=((Co*un*W)/(L)*((Vgs-VT)^2/(2)))
disp("Drain current,Id=((Co*un*W)/(L)*((Vgs-VT)^2/(2)))="+string(Id)+" A")//calculation.


//The answer provided in the book (for Id) is wrong as the value of mobility used for solution is different than provided in the question and also value of (Vgs-Vt) is put wrong in the solution than given in the book. 
//I have used the value given in the question i.e. answer differ.
