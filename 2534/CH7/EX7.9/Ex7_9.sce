//Ex7_9
clc
R1 = 80*10^3
R2 = 25*10^3
Re = 2*10^3
Rc = 2*10^3
beta = 100
VCC = 12
VBE = 0.7
disp("R1 = "+string(R1)+"ohm")
disp("R2 = "+string(R2)+"ohm")
disp("Re = "+string(Re)+"ohm")//emitter resistance
disp("Rc = "+string(Rc)+"ohm")//collector resistance
disp("beta = "+string(beta))//current gain
disp("VCC = "+string(VCC)+"V")//collector supply voltage
disp("VBE = "+string(VBE)+"V")//base-emitter voltage
Rb = R1*R2/(R1+R2)
disp("Rb = R1*R2/(R1+R2) = "+string(Rb)+"ohm")//base resistance
VB = VCC*(R2/(R1+R2))
disp("VB = VCC(R2/(R1+R2)) = "+string(VB)+"V")//base voltage
IB = (VB - VBE)/(Rb*(1+((1+beta)*(Re/Rb))))
disp("IB = (VB - VBE)/(Rb*(1+((1+beta)*(Re/Rb))))")
disp("   = "+string(IB)+"A")//base current
IC = beta*IB
disp("IC = beta*IB = "+string(IC)+"A")//collector current
IE = IC
VCE = VCC - IC*Rc - IE*Re
disp("VCE = VCC - IC*Rc - IE*Re = "+string(VCE)+"V")//collector-emitter voltage
disp("operating point is("+string(VCE)+"V, "+string(IC)+"A)")
S = (1+beta)*[(1+Rb/Re)/(1+beta+Rb/Re)]
disp("S = (1+beta)*[(1+Rb/Re)*(1+beta+Rb/Re)] = "+string(S))
disp("S'' = -(beta/Re)/(1+beta+Rb/Re) = "+string((-beta/Re)/(1+beta+Rb/Re)))
