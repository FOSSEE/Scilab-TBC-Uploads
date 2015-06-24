//Ex6_2
clc
Ri=0.5*10^(3)
disp("Ri= "+string(Ri)+ " ohm")  // Amplifier input resistance
RL=0.05*10^(3)
disp("RL= "+string(RL)+ " ohm")  // Load resistance
Vom=1
disp("Vom= "+string(Vom)+" volts") // Output voltage 
Vo=Vom/sqrt(2)//RMS value of Output voltage 
Vim=1*10^(-3)
disp("Vim= "+string(Vim)+" volts") // Peak Input voltage
Vi=Vim/sqrt(2)//RMS Input voltage 
Av=20*log10(Vo/Vi)
disp("Av(in dB)=20*log10(Vo/Vi)= "+string(Av)+" dB ") //Voltage gain in decibel
Iim=Vim/Ri
disp("Iim= Vim/Ri= "+string(Iim)+" A") // Input peak current
Ii=Iim/sqrt(2) //RMS value of input current
Iom=Vom/RL 
disp("Iom= Vom/RL= "+string(Iom)+" A") // Output peak current
Io=Iom/sqrt(2) //RMS value of Output current
Ai=20*log10(Io/Ii)
disp("Ai=20*log10(Io/Ii)= "+string(Ai)+" dB ") //Current gain in decibel
pi=Vi^2/Ri
disp("pi= Vi^2/Ri= "+string(pi)+" W") // Input power 
po=Vo^2/RL
disp("po= Vo^2/RL= "+string(po)+" W") // Output power 
Ap=10*log10(po/pi)
disp("Ap=10*log10(po/pi)= "+string(Ap)+" dB ") //Power gain in decibel



