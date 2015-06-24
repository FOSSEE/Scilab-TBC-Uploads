clc
VDS = .5
disp("VDS = "+string(VDS)+"V") //initializing value of drain bias voltage 
h=1*10^-4
disp("h = "+string(h)+"cm") //initializing value of MOSFET depth
ID=4.03
disp("ID(sat) = "+string(ID)+"mA") //initializing value of saturated current
F = VDS/h
disp("The electric field in channel is ,F = VDS/h = "+string(h)+"V/cm")//calculation
Vsi = 5*10^6
disp("Vsi = "+string(Vsi)+"cm/s") //initializing value of velocity of electrons at this field in Si
VGaAs = 10^7
disp("VGaAs = "+string(VGaAs)+"cm/s") //initializing value of  velocity of electrons at this field in GaAs
Ttr1 = h/Vsi 
disp("The transit time  of electrons in silicon is ,Ttr(si) = h/Vsi = "+string(Ttr1)+"s")//calculation
Ttr2 = h/VGaAs 
disp("The transit time of electrons in GaAs is ,Ttr(GaAs) = h/VGaAs= "+string(Ttr2)+"s")//calculation
fT1 = 1/(2*%pi*Ttr1)
disp("The corresponding frequency of silicon is ,fT(Si) = 1/(2*%pi*Ttr(si))= "+string(fT1)+"Hz")//calculation
fT2 = 1/(2*%pi*Ttr2)
disp("The corresponding frequency of GaAs is ,fT(GaAs) = 1/(2*%pi*Ttr(GaAs))= "+string(fT2)+"Hz")//calculation

