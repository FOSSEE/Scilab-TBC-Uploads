clc
Io1=10^-9
disp("Io1 = "+string(Io1)+" A") //initializing value of reverse saturation current of silicon SBD.
Io2=10^-14
disp("Io2 = "+string(Io2)+"A") //initializing value of reverse saturation current of a PN junction.
Vt=0.0259
disp("Vt = "+string(Vt)+" eV") //initializing value of thermal voltage.
I=100*10^-6
disp("I = "+string(I)+" A") //initializing value of required current.
VfSBD=Vt*((log(I/Io1+1)))
disp("forward Voltage for silicon SBD,VfSBD=Vt*((log(I/Io1+1)))= "+string(VfSBD)+" V") // calculation.
VfPN=Vt*((log(I/Io2+1)))
disp("forward Voltage for silicon SBD,VfPN=Vt*((log(I/Io2+1)))="+string(VfPN)+" V")//calculation
