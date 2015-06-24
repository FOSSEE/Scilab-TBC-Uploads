clc
un=525
disp("un = "+string(un)+"cm^2/V-s") //initializing value of mobility of n-channel MOS transistor.
VT=0.75
disp("VT = "+string(VT)+" V") //initializing value of threshold Voltage.
Vgs=2
disp("Vgs = "+string(Vgs)+" V") //initializing value of gate to source voltage.
tox=400*10^-8
disp("tox = "+string(tox)+" cm") //initializing value of gate oxide thickness.
et=3.9
disp("et = "+string(et)) //initializing value of relative permittivity.
eo=8.85*10^-14
disp("eo = "+string(eo)+"F/cm") //initializing value of free space permittivity.
eox=(eo*et)
disp("eox=(eo*et))="+string(eox)+" F/cm^2")//calculation
Id=6*10^-3
disp("Id = "+string(Id)+"A") //initializing value of width of channel..
X=((Id*tox*2)/(eox*un*((Vgs-VT)^2)))
disp("width to length ratio,W/L=((Id*tox*2)/(eox*un*((Vgs-VT)^2))))="+string(X))//calculation
