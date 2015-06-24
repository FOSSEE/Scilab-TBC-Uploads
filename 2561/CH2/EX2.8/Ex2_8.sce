//Ex2_8
clc
Vz=10 //initialization
disp("diode voltage,Vz = "+string(Vz)+" volts")
TC1=(10*0.02)/(100) //calculation
disp(" Zener diode TC1 = "+string(TC1)+" V/degree celsius")
VD=0.7
disp(" voltage drop,VD = "+string(VD)+" volts")
TC2=(-2.5*10^(-3))  //calculation
disp("Si diode TC = "+string(TC2)+" V/degree celsius")
Vref1=VD+Vz
disp("Combined voltage ,Vref=VD+Vz= "+string(Vref1)+" volts")
TC3=(TC1+TC2) //calculation
disp(" Combined TC = "+string(TC3)+" V/degree celsius")
TC=(TC1+TC2)*100/(Vref1) //calculation
disp("New Combined TC = (TC1+TC2)*100/(Vref1)="+string(TC)+" percent/degree celsius")
T1=25//temperature
T2=50// new temperature
Vref=Vref1-((-TC3)*(T2-T1))//calculation
disp("New Combined reference voltage ,Vref= Vref1-((-TC3)*(T2-T1))="+string(Vref)+" volts")
