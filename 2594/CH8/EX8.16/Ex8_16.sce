clc
L=2.5*10^-6
disp("L = "+string(L)+" meter") //initializing value of length of channel.
un=800
disp("un = "+string(un)+"cm^2/V-s") //initializing value of mobility of n-channel MOS transistor.
VT=0.8
disp("VT = "+string(VT)+" V") //initializing value of threshold Voltage.
Vgs=1
disp("Vgs = "+string(Vgs)+" V") //initializing value of gate to source voltage.
tox=400*10^-8
disp("tox = "+string(tox)+" cm") //initializing value of gate oxide thickness.
et=3.9
disp("et = "+string(et)) //initializing value of relative permittivity.
eo=8.85*10^-14
disp("eo = "+string(eo)+"F/cm") //initializing value of free space permittivity.
eox=(eo*et)
disp("eox=(eo*et))="+string(eox)+" F/cm^2")//calculation
W=25*10^-6
disp("W = "+string(W)+"m") //initializing value of width of channel..
Id=((eox*un*W)/(tox*L)*((Vgs-VT)^2/(2)))
disp("Drain current,Id=((eox*un*W)/(tox*L)*((Vgs-VT)^2/(2))))="+string(Id)+" A")//calculation
