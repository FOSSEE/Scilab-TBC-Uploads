//Ex6_3
clc
RL=1*10^(3)
disp("RL= "+string(RL)+ " ohm")  //Load resistance
RF=500*10^(3)
disp("RF= "+string(RF)+ " ohm")  //Feedback resistance
Beta_o=50
disp("Beta_o = "+string(Beta_o)) //BJT gain
rbe=1*10^(3)
disp("rbe= "+string(rbe)+ " ohm")  //Base-emitter resistance
gm=50*10^(-3)
disp("gm = "+string(gm)+" A/V")//  transconductance for BJT 
rc=50*10^(3)
disp("rc= "+string(rc)+ " ohm")  //collector resistance
disp("part(i)")
Adm1=(-gm*RL)
disp("Adm1=(-gm*RL)= "+string(Adm1)) // Differential mode gain for BJT for DIDO and SIDO modes
Adm2=(0.5*gm*RL)
disp("Adm2=(0.5*gm*RL)= "+string(Adm2)) // Differential mode gain for BJT for DISO and SISO modes
Rid=2*rbe
disp("Rid=2*rbe= "+string(Rid)+ " ohm")  //input differential mode resistance
Acm=(-RL)/(2*RF)
disp("Acm=(-RL)/(2*RF)= "+string(Acm)) // Common mode gain for BJT for DISO and SISO modes
Ric=Beta_o*RF
disp("Ric=Beta_o*RF= "+string(Ric)+ " ohm")  // common mode input resistance
CMRR=2*gm*RF
disp("CMRR=2*gm*RF= "+string(CMRR))  // common mode rejection ratio
disp("part(ii)")
Vi1=(-0.5)*10^(-3)
disp("Vi1= "+string(Vi1)+" volts") // input voltage1 
Vi2=(+0.5)*10^(-3)
disp("Vi2= "+string(Vi2)+" volts") // input voltage2
Vcm=(10)*10^(-3)
disp("Vcm= "+string(Vcm)+" volts") // common mode voltage
Vd=Vi1-Vi2
disp("Vd=Vi1-Vi2= "+string(Vd)+" volts") // differential voltage
Vod=abs(Vd*Adm2)
disp("Vod=abs(Vd*Adm2)= "+string(Vod)+" volts") // output differential voltage for DISO and SISO modes
Voc=abs(Vcm*Acm)
disp("Voc=abs(Vcm*Acm)= "+string(Voc)+" volts") // output common mode  voltage
Error=(Voc/Vod)*100
disp("percentage error=(Voc/Vod)*100= "+string(Error)+"%")//percentage error due to CM signal
disp("part(iii)")
RLeff=(RL*Rid)/(RL+Rid)
disp("RLeff=(RL*Rid)/(RL+Rid)= "+string(RLeff)+ " ohm")  // Effective load resistance
Adm=gm*RLeff
disp("Adm=gm*RLeff= "+string(Adm)) // Modified Differential mode gain for BJT for DIDO and SIDO modes
Acm=(-RLeff)/(2*RF)
disp("Acm=(-RLeff)/(2*RF)= "+string(Acm)) // Modified Common mode gain for BJT for DISO and SISO modes
CMRR=abs(Adm/(Acm))
disp("CMRR=abs(Adm/(Acm))= "+string(CMRR))  // Modified common mode rejection ratio
//NOTE:  In Book, Formulae used for Acm in part(iii) is written as Acm=(-RL)/(2*RF)but ans is calculated by using RLeff in place of RL.So i have written formulae as Acm=(-RLeff)/(2*RF) in programming.
// Assigned variable name: in part(i) Adm for DIDO and SIDO modes is represented by Adm1 and Adm for DISO and SISO modes is represented by Adm2 to resist any anamoly in the programming.
