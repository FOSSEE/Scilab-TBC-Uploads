//Ex5_1
clc
RL=5*10^(3)
disp("RL= "+string(RL)+ " ohm")  //Load resistance
R1=100*10^(3)
disp("R1= "+string(R1)+ " ohm")  // resistance
R2=10*10^(3)
disp("R2= "+string(R2)+ " ohm")  // resistance
rc=50*10^(3)
disp("rc= "+string(rc)+ " ohm")  //collector resistance
rd=rc // Drain and collector  resistance are equal
rbe=1*10^(3)
disp("rbe= "+string(rbe)+ " ohm")  //Load resistance
gm=50*10^(-3)
disp("gm = "+string(gm)+" A/V")//  transconductance for BJT 
Av=(-gm*RL)
disp("For BJT,Av=(-gm*RL)= "+string(Av)) //Voltage gain for BJT
AI=gm*rbe
disp("AI=(gm*rbe)= "+string(AI)) // current gain for BJT
gm=5*10^(-3)
disp("gm = "+string(gm)+" A/V")//  transconductance for FET 
Av=(-gm*RL)
disp("For FET,Av=(-gm*RL)= "+string(Av)+ " ") // gain for FET
R0=rd
disp("R0= "+string(R0)+ " ohm")  //output resistance for FET and BJT
Ri=rbe
disp("Ri= "+string(Ri)+ " ohm")  //BJT input resistance 
RB=(R1*R2)/(R1+R2)
disp("RB=(R1*R2)/(R1+R2)= "+string(RB)+ " ohm")  // eqivalent Base resistance for  BJT
Ri=(RB*rbe)/(RB+rbe)
disp("Ri= (RB*rbe)/(RB+rbe)="+string(Ri)+ " ohm")  //New value of BJT input resistance 
