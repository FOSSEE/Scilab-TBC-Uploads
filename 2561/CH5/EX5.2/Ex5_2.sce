//Ex5_2
clc
RL=5*10^(3)
disp("RL= "+string(RL)+ " ohm")  //Load resistance
R1=100*10^(3)
disp("R1= "+string(R1)+ " ohm")  // resistance
R2=100*10^(3)
disp("R2= "+string(R2)+ " ohm")  // resistance
Rs=5*10^(3)
disp("Rs= "+string(Rs)+ " ohm")  // Source resistance
Beta_o=50
disp("Beta_o = "+string(Beta_o)) //BJT gain
rbe=1*10^(3)
disp("rbe= "+string(rbe)+ " ohm")  //Base-emitter resistance
gm=50*10^(-3)
disp("gm = "+string(gm)+" A/V")//  transconductance for BJT 
rc=50*10^(3)
disp("rc= "+string(rc)+ " ohm")  //collector resistance
Av=RL/(RL+1/gm) // Gain formulae
disp("Av=RL/(RL+1/gm)= "+string(Av)) // voltage gain for BJT
Avs=RL/[(Rs/Beta_o)+(1/gm)+(RL)]
disp("Avs=RL/[(Rs/Beta_o)+(1/gm)+(RL)]= "+string(Avs)) // Overall voltage gain for BJT
AI=-(Beta_o+1)
disp("AI=-(Beta_o+1)= "+string(AI)) // current gain for BJT
R0=(Rs+rbe)/Beta_o
disp("R0= (Rs+rbe)/Beta_o="+string(R0)+ " ohm")  //output resistance for  BJT
Ri=rbe+Beta_o*RL // formulae
disp("Ri= rbe+Beta_o*RL="+string(Ri)+ " ohm")  // value of BJT input resistance 
RB=(R1*R2)/(R1+R2)
disp("RB=(R1*R2)/(R1+R2)= "+string(RB)+ " ohm")  // eqivalent Base resistance for  BJT
Rieff=(Ri*RB)/(RB+Ri)
disp("Rieff= (Ri*RB)/(RB+Ri)="+string(Rieff)+ " ohm")  //Effective value of BJT input resistance 

