//Ex5_7  
clc
Ic=1*10^(-3)
disp("Ic = "+string(Ic)+" ampere") //  collector current BJT
rbe=2*10^(3)
disp("rbe= "+string(rbe)+ " ohm")  //base -emitter resistance
gm=50*10^(-3)
disp("gm = "+string(gm)+" A/V")//  transconductance for BJT
Beta_o=100
disp("Beta_o = "+string(Beta_o)+" ") //BJT gain
rc=50*10^(3)
disp("rc= "+string(rc)+ " ohm")  //collector resistance
Cbe=10*10^(-12)
disp("Cbe= "+string(Cbe)+ " farad")  //base -emitter capacitance
Ctc=1*10^(-12)
disp("Ctc= "+string(Ctc)+ " farad")  //input device capacitance
disp("part(i)")// part(i)of question
RL=10*10^(3)
disp("RL= "+string(RL)+ " ohm")  //Load resistance
Rs=500
disp("Rs= "+string(Rs)+ " ohm")  //input source resistance
Rth=(Rs*rbe)/(Rs+rbe)
disp("Rth=(Rs*rbe)/(Rs+rbe)="+string(Rth)+ " ohm")  // eqivalent resistance
Avm=(-gm*RL)
disp("Avm=(-gm*RL)="+string(Avm)) // Mid-frequency gain for CE amplifier
CM=Ctc*(1-Avm)
disp("CM=Ctc*(1-Avm)= "+string(CM)+ " farad")  //calculated capacitance
Ci=Cbe
disp("Ci=Cbe= "+string(Ci)+ " farad")  //calculated input capacitance
fHi=1/[2*(%pi)*(Rth)*(Cbe+CM)]
disp("fHi=1/[2*(%pi)*(Rth)*(Cbe+CM)]= "+string(fHi)+ " Hz") // Higher-frequency cutoff for CE amplifier
Ri=rbe
disp("Ri=rbe ="+string(Ri)+ " ohm")  //input resistance CE amplifier
Ro=rc
disp("R0= rc="+string(Ro)+ " ohm")  //output  resistance for CE amplifier
fB=1/[2*(%pi)*(rbe)*(Cbe)]
disp("fB=1/[2*(%pi)*(rbe)*(Cbe)]= "+string(fB)+ " Hz") // base terminal frequency cutoff
fT=Beta_o*fB
disp("fT=Beta_o*fB= "+string(fT)+ " Hz") // Unity gain bandwidth for CE amplifier
disp("part(ii)")// part(ii)of question
Rs=50*10^(3)
disp("Rs= "+string(Rs)+ " ohm")  //input source resistance for CC amplifier
RL=1*10^(3)
disp("RL= "+string(RL)+ " ohm")  //Load resistance  for CC amplifier
fhi=1/[2*(%pi)*(Rs)*(Ctc)]
disp("fhi=1/[2*(%pi)*(Rs)*(Ctc)]= "+string(fhi)+ " Hz") // Higher-frequency cutoff for CC amplifier
Avm=(gm*RL)/(1+gm*RL)
disp("Avm=(gm*RL)/(1+gm*RL)="+string(Avm)) // Mid-frequency gain for CC amplifier
Ro=1/gm
disp("Ro= 1/gm="+string(Ro)+ " ohm")  //output  resistance for CC amplifier
Ri=Beta_o*RL
disp("Ri=Beta_o*RL ="+string(Ri)+ " ohm")  //input resistance CE amplifier
disp("part(iii)")// part(iii)of question
RL=10*10^(3)
disp("RL= "+string(RL)+ " ohm") //Load resistance  for CB amplifier
Rs=50
disp("Rs= "+string(Rs)+ " ohm")  //input source resistance for CB amplifier
fHi=gm/[2*(%pi)*(Cbe)]
disp("fHi=gm/[2*(%pi)*(Cbe)]= "+string(fHi)+ " Hz") // Higher-frequency cutoff for CB amplifier
fHo=1/[2*(%pi)*(Ctc)*(RL)]
disp("fHo=gm/[2*(%pi)*(Ctc)*(RL)]= "+string(fHo)+ " Hz") // Higher-frequency cutoff for CB amplifier
Avs=(gm*RL)/(1+gm*Rs)
disp("Avs=(gm*RL)/(1+gm*Rs)="+string(Avs)) // Mid-frequency gain for CB amplifier
Ri=1/gm
disp("Ri= 1/gm="+string(Ri)+ " ohm")  //output  resistance for CB amplifier
Ro=Beta_o*rc
disp("Ro=Beta_o*rc ="+string(Ro)+ " ohm")  //input resistance CB amplifier
//ERROR NOTE:some parameters in the book have been calculated using gm=40 mA/V while given value is gm=50 mA/V. So ,for part(ii) CC amplifier correct value of R0=20 ohm,Ri=100000 ohm,and for part(iii)CB amplifier over all voltage gain Avs=142.85714 ,Ri=20 ohm all calculated for gm=50 mA/V.
