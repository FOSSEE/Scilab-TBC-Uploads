//Ex5_4
clc
RL=5*10^(3)
disp("RL= "+string(RL)+ " ohm")  //Load resistance
RF=2.5*10^(3)
disp("RF= "+string(RF)+ " ohm")  // resistance
Rs=50
disp("Rs= "+string(Rs)+ " ohm")  // resistance
ro=50*10^(3)
disp("ro= "+string(ro)+ " ohm")  // output resistance
rd=ro // drain resistance
rc=ro// Collector resistance
disp("rc= "+string(rc)+ " ohm")  // Collector resistance
rbe=1*10^(3)
disp("rbe= "+string(rbe)+ " ohm")  //base -emitter resistance
disp("For CG Amplifier")
gm=5*10^(-3)
disp("gm = "+string(gm)+" A/V")//  transconductance for FET 
Ri=1/gm // formulae
disp("Ri= 1/gm="+string(Ri)+ " ohm")  // value of CGA (common gate amplifier)input resistance for FET
Avs=gm*RL/(1+gm*Rs)
disp("Avs=gm*RL/(1+gm*Rs)= "+string(Avs)) // Overall voltage gain for FET (CGA)
Ro=rd*(1+gm*Rs)
disp("Ro=rd*(1+gm*Rs)="+string(Ro)+ " ohm")  //output resistance for  FET (CGA)
disp("For CB Amplifier")
gm=50*10^(-3)
disp("gm = "+string(gm)+" A/V")//  transconductance for BJT
Ri=1/gm // formulae
disp("Ri= 1/gm="+string(Ri)+ " ohm")  // value of CBA (common base amplifier)input resistance for BJT
Avs=gm*RL/(1+gm*Rs)
disp("Avs=gm*RL/(1+gm*Rs)= "+string(Avs)) // Overall voltage gain for BJT (CBA)
Ro=gm*(rbe*rc)
disp("Ro=gm*(rbe*rc)="+string(Ro)+ " ohm")  //output resistance for  BJT (CBA)

//NOTE: I have calculated first all the parameters for CG amplifier and then for CB amplifier but in book parameters have been calculated alternatingly for CG and CB amplifiers.
