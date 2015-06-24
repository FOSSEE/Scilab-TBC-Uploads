//Ex4_15
clc
RON=100
disp("RON= "+string(RON)+ " ohm")  //ON resistance of  analog series switch
ROFF=10^(10)
disp("ROFF= "+string(ROFF)+ " ohm")  //OFF resistance analog series switch
Vip=1
disp("Vip= "+string(Vip)+" volts")// Peak amplitude of analog voltage
Rs=100
disp("Rs= "+string(Rs)+ " ohm")  //Voltage source resistance
RL=10*10^(3)
disp("RL= "+string(RL)+ " ohm")  //Load resistance
disp("part(i) ")// part(i) of this question
Vo=(Vip*RL)/(RL+RON+Rs)
disp("Vo=(Vip*RL)/(RL+RON+Rs)= "+string(Vo)+" volts")// ON voltage
ErON=[Vip*(RON+Rs)/(RL+RON+Rs)]*100
disp("ErON=[Vip*(RON+Rs)/(RL+RON+Rs)]*100= "+string(ErON)+" percent")// Output voltage error 
vOFF=(Vip*RL)/ROFF
disp("vOFF=(Vip*RL)/ROFF= "+string(vOFF)+" volts")// Output voltage in OFF state
OFF_isolation=20*log10(Vip/vOFF)
disp("OFF_isolation=20*log10(Vip/vOFF)= "+string(OFF_isolation)+" dB") // OFF_isolation=20*log10(Vip/vOFF) in dB// Thus ON error and OFF isolation decrease with increasing values of RL.
disp("part(ii) ")// part(ii) of this question
vOFF=(Vip*RON)/(Rs+RON)
disp("vOFF=(Vip*RON)/(Rs+RON)= "+string(vOFF)+" volts")// Output voltage in OFF state for analog shunt switch
OFF_isolation=20*log10((Rs+RON)/RON)// OFF_isolation of shunt switch
disp("OFF_isolation=20*log10((Rs+RON)/RON)= "+string(OFF_isolation)+" dB")// Thus shunt switch is inferior to series switch in its OFF isolation property

// ERROR NOTE: in question the author has given RL = 10K but in solution he has used RL = 1 k ... I have done programming using RL = 10 K.


