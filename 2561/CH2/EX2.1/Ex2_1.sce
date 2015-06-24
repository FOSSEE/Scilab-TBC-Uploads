//Ex2_1
clc
IR=50*10^(-9)
disp("IR = "+string(IR)+" ampere") // value of Reverse saturation current
VT=26*10^(-3)
disp(" Thermal voltage,VT= "+string(VT)+"volt")
VAK1=(-0.25)// diode junction voltage
disp("Junction voltage,VAK1="+string(VAK1)+"volt")
IA =IR*[exp(VAK1/(2*VT))-1]// formulae for diode current
disp("Diode current,IA =IR*(exp(VAK1/(2*VT))-1)= "+string(IR*(exp(VAK1/(2*VT))-1))+" ampere") // calculation
VAK2=(+0.25)
disp("Junction voltage,VAK2="+string(VAK2)+"volt")
IA =IR*[exp(VAK2/(2*VT))-1]
disp("Diode current,IA =IR*(exp(VAK2/(2*VT))-1)= "+string(IA)+" ampere") // calculation
VAK3=(+0.5)
disp("Junction voltage,VAK3="+string(VAK3)+"volt")
disp("Diode current,IA =IR*(exp(VAK3/(2*VT))-1)= "+string(IR*(exp(VAK3/(2*VT))-1))+" ampere") // calculation
VAK4=(+0.6)
disp("Junction voltage,VAK4="+string(VAK4)+"volt")
disp("Diode current,IA =IR*(exp(VAK4/(2*VT))-1)= "+string(IR*(exp(VAK4/(2*VT))-1))+" ampere") // calculation
VAK5=(+0.7)
disp("Junction voltage,VAK3="+string(VAK5)+"volt")
disp("Diode current,IA =IR*(exp(VAK5/(2*VT))-1)= "+string(IR*(exp(VAK5/(2*VT))-1))+" ampere") // calculation
VAK6=(+0.8)
disp("Junction voltage,VAK3="+string(VAK6)+"volt")
disp("Diode current,IA =IR*(exp(VAK6/(2*VT))-1)= "+string(IR*(exp(VAK6/(2*VT))-1))+" ampere") // calculation
