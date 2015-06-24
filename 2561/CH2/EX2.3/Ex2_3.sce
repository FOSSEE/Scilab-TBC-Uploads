//Ex2_3
clc
VT=26*10^(-3)
disp(" Thermal voltage,VT= "+string(VT)+" volt")//initialization
IR=50*10^(-9)
disp("IR = "+string(IR)+" ampere") // value of Reverse saturation current
VAK1=(0.7)// diode junction voltage
disp("Junction voltage,VAK1="+string(VAK1)+" volt")//initialization
gf=(IR/(2*VT))*exp(VAK1/(2*VT))  //Formulae
disp("Forward conductance,gf="+string(gf)+" mho")
rf=1/gf  //Formulae
disp("Forward resistance,rf = "+string(rf)+ " ohm")
VAK2=(-0.7)
gr=(IR/(2*VT))*exp(VAK2/(2*VT))  //Formulae
disp("Reverse conductance,gr="+string(gr)+" mho")
rr=1/gr  //Formulae
disp(" Reverse resistance,rr = "+string(rr)+ " ohm")
