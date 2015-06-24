disp('chapter 12 ex12.3')
disp('given')
disp("considering example 12.2")
disp("supply source resistance=10ohm")
Rs=10
disp("from IN756 datasheet Zz=8ohm")
Zz=8
disp("At 10% change in Vs=16V is")
Vs=16
DVs=.1*Vs
disp('volts',DVs)
disp("DVo=DVs*Zz*(R2+R3)/(R1*R3)")
disp("R2=68000  R1=390   R3=150000")
R2=68000
R1=390
R3=150000
DVo=DVs*Zz*(R2+R3)/(R1*R3)
disp('volts',DVo)
disp("Line regulation=(DVo for 10%Vs change)*100/Vo  and Vo=12V")
Vo=12
LR=(DVo)*100/Vo
disp(LR,"LR in percentage")
disp("for Il change of 50mA")
Il=0.05
disp("DVo=Il*Rs")
DVs=Il*Rs
disp('volts',DVs)
DVo=DVs*Zz*(R2+R3)/(R1*R3)
disp('volts',DVo)
disp("Load regulation=(DVo for DIl=Ilmax)*100/Vo")
LR=(DVo)*100/Vo
disp(LR,"Load regulation in percentage=")
disp("Vro=Vrs*Zz*(R2+R3)/(R1*R3)")
y=Zz*(R2+R3)/(R1*R3)
disp(y,"Vro=Vrs*")
disp("Ripple rejection=20*log(Vrs/Vro)")
RR=20*log10(1/y)
disp(RR,"Ripple Rejection in DB=  ")
