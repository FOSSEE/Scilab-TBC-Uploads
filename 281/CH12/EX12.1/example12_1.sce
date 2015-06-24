disp('chapter 12 ex12.1')
disp('given')
disp("the dc voltage source is designed in ex 6.1 has")
disp("Vs=Vcc=12V    Vo=6.3V      R1=270ohm     ")
disp("D1 is zener diode   Ilmax=42mA")
Vs=12
Vcc=12
Vo=6.3
R1=270
Ilmax=.042
disp("supply resistance=25 ohm")
Rs=25
disp("from datasheet Zz=7ohm")
Zz=7
disp("at 10% change in Vs")
DVs=.1*Vs
disp('volts',DVs)
DVo=DVs*Zz/R1
disp(DVo,"DVo=")
disp("Line regulation=(DVo for 10%Vs change)*100/Vo")
LR=(DVo)*100/Vo
disp(LR,"LR in percentage")
DVo=Ilmax*Rs*Zz/R1
disp(DVo,"DVo=")
disp("Load regulation=(DVo for DIl=Ilmax)*100/Vo")
LR=(DVo)*100/Vo
disp(LR,"Load regulation in percentage=")
Vro=Zz/R1
disp(Vro,"Vro=Vrs*")
disp("Ripple rejection=20*log(Vrs/Vro)")
RR=20*log10(1/Vro)
disp(RR,"Ripple Rejection in DB=  ")

