//Ex7_9
clc
AV=100000
disp("AV="+string(AV)) // Voltage gain 
Ri=10*10^(3)
disp("Ri= "+string(Ri)+ " ohm")  //Input resistance of OP-AMP
Ro=10
disp("Ro= "+string(Ro)+ " ohm")  //Output resistance
Rs=10*10^(6)
disp("Rs= "+string(Rs)+ " ohm")  //Source resistance
RL=1*10^(3)
disp("RL= "+string(RL)+ " ohm")  //Load resistance
B=(Rs-Ri)/(AV*Ri)
disp("B=(Rs-Ri)/(AV*Ri)= "+string(B)) //Feedback factor
AVf=AV/(1+B*AV)
disp("AVf=AV/(1+B*AV)="+string(AVf)) // Overall Voltage gain with feedback
Rof=Ro/(1+B*AV)
disp("Rof=Ro/(1+B*AV) ="+string(Rof)+ " ohm")  //output resistance with feedback
Rif=Ri*(1+B*AV)
disp("Rif=Ri/(1+B*AV) ="+string(Rif)+ " ohm")  //Input resistance with feedback
Ap=(AVf^2)*(Rif/RL)
disp("Ap=(AVf^2)*(Rif/RL)="+string(Ap)) // Overall Power gain 
AP=10*log10(Ap)
disp("AP=10*log10(Ap)="+string(AP)+"dB") // Overall Power gain in dB 
