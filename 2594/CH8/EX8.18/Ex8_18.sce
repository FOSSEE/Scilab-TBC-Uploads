clc
Nd=2*10^16
disp("Nd = "+string(Nd)+" /cm^3") //initializing value of donor ion  concentration.
a=2*10^-4
disp("a = "+string(a)+" cm") //initializing value of height of channel at pinch off.
e=1.6*10^-19
disp("e = "+string(e)+" columns") //initializing value of charge of electrons.
Er=11.9
disp("Er = "+string(Er)) //initializing value of relative permittivity.
Eo=8.85*10^-14
disp("Eo = "+string(Eo)+"F/cm") //initializing value of free space permittivity.
E=(Eo*Er)
disp("E=(Eo*Er))="+string(E)+" F/cm^2")//calculation
Vp=((e*Nd*a^2)/(2*E))
disp("Pinch off Voltage,Vp=((e*Nd*a^2)/(2*E)))="+string(Vp)+" V")//calculation
