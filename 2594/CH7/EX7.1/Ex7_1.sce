clc
Dnb=20
disp("Dnb = "+string(Dnb)+" cm^2/s") //initializiation the value of one of base parametre of NPN transistor.
nB=10^4
disp("nB = "+string(nB)+" /cm^3") //initializiation the value of one of base parametre of NPN transistor.
xB=1*10^-6
disp("xB = "+string(xB)+" m") //initializiation the value of one of base parametre of NPN transistor.
AB=10^-4
disp("AB = "+string(AB)+" cm^2") //initializiation the value of one of base parametre of NPN transistor.
e=1.6*10^-19
disp("e = "+string(e)+" columns") //initializiation the value of electronic charge .
Vbe=0.5
disp("Vbe = "+string(Vbe)+" V") //initializiation the value of base emitter voltage of NPN transistor..
VT=0.0259
disp("VT = "+string(VT)+" V") //initializiation the value of threshold voltage.
WB=10^-4
disp("WB = "+string(WB)+" cm") //initializiation the value of base width of NPN transistor.
Io=((e*AB*Dnb*nB)/(WB))
disp("Magnitude of Io,Io=((e*AB*Dnb*nB)/(WB)))="+string(Io)+" A")//calculation
Ic=Io*(exp(Vbe/VT)-1)
disp("Collector current,Ic=Io((exp(Vbe/VT))-1))="+string(Ic)+" A")//calculation
