//Ex5_3
clc
RL=5*10^(3)
disp("RL= "+string(RL)+ " ohm")  //Load resistance
RF=5*10^(3)
disp("RF= "+string(RF)+ " ohm")  // resistance
Beta_o=50
disp("Beta_o = "+string(Beta_o)) //BJT gain
rbe=1*10^(3)
disp("rbe= "+string(rbe)+ " ohm")  //Base-emitter resistance
gm=50*10^(-3)
disp("gm = "+string(gm)+" A/V")//  transconductance for BJT 
rc=50*10^(3)
disp("rc= "+string(rc)+ " ohm")  //collector resistance
Ri=rbe+RF*(1+gm*rbe) // formulae
disp("Ri= rbe+RF*(1+gm*rbe)="+string(Ri)+ " ohm")  //  BJT input resistance 
Av=(-gm*RL)/(1+gm*RF)// formulae
disp("Av=(-gm*RL)/(1+gm*RF)= "+string(Av)) // voltage gain for BJT
AI=Beta_o
disp("AI=(Beta_o)= "+string(AI)) // current gain for BJT
R0=Beta_o*rc
disp("R0= Beta_o*rc="+string(R0)+ " ohm")  //output resistance for  BJT
