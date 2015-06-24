clc
Io1=10*10^-7
disp("Io1 = "+string(Io1)+" A") //initializing value of reverse saturation current of silicon SBD.
Io2=10*10^-7
disp("Io2 = "+string(Io2)+"A") //initializing value of reverse saturation current of a PN junction.
Vt=0.0259
disp("Vt = "+string(Vt)+" eV") //initializing value of thermal voltage.
I=1*10^-3
disp("I = "+string(I)+" A") //initializing value of forward current.
V=0.25
disp("V = "+string(V)+" V") //initializing value of difference in the forward voltage of the two diode.
VfSBD=Vt*((log(I/Io1+1)))
disp("forward Voltage for silicon SBD,VfSBD=Vt*((log(I/Io1+1)))= "+string(VfSBD)+" V") // calculation.
VfPN=(V+VfSBD)
disp("forward volage applied across the PN Diode,VfPN=(V+VfSBD)="+string(VfPN)+" V")//calculation
Io=(I/((exp(VfPN/Vt))-1))
disp("reverse saturation current of the PN junction Diode,Io=(I/((exp(VfPN/Vt))-1))="+string(Io)+" A")//calculation
