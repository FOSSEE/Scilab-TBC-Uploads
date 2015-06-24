//Ex4_4
clc
disp("part(i) ")// part(i) of this question
IDSS=5*10^(-3)
disp("IDSS = "+string(IDSS)+" ampere") //  maximum drain current JFET 1
VP=(2)
disp("VP= "+string(VP)+" volts") // pinch off voltage for JFET 1
IDQ=4.42*10^(-3)
disp("IDQ = "+string(IDQ)+" ampere") //   drain current for JFET 1
gm=[(2)*sqrt(IDQ*IDSS)]/VP
disp("gm =[(2)*sqrt(IDQ*IDSS)]/VP= "+string(gm)+" A/V")// calculating transconductance for JFET with IDQ = 4.42 mA

disp("part(ii) ")// part(ii) of this question
IDQ=6.04*10^(-3)
disp("IDQ = "+string(IDQ)+" ampere") //   drain current for JFET 1
IDSS=15*10^(-3)
disp("IDSS = "+string(IDSS)+" ampere") //  maximum drain current JFET2
VP=(6)
disp("VP= "+string(VP)+" volts") // pinch off voltage for JFET2  
gm=[(2)*sqrt(IDQ*IDSS)]/VP
disp("gm =[(2)*sqrt(IDQ*IDSS)]/VP= "+string(gm)+" A/V")// calculating transconductance for JFET with IDQ = 6.04 mA

disp("part(iii) ")// part(iii) of this question
IDQ=1*10^(-3)
disp("IDQ = "+string(IDQ)+" ampere") //   drain current for EMOSFET 1
KF=0.25*10^(-3)
disp("KF = "+string(KF)+" A/V^2") //  Scale factor for finding EMOSFET1
gm=sqrt(4*IDQ*KF)
disp("gm =sqrt(4*IDQ*KF)= "+string(gm)+" A/V")// calculating transconductance for EMOSFET1 with IDQ = 1 mA

disp("part(iv) ")// part(iv) of this question
IDQ=0.91*10^(-3)
disp("IDQ = "+string(IDQ)+" ampere") //   drain current for EMOSFET 2
KF=0.375*10^(-3)
disp("KF = "+string(KF)+" A/V^2") //  Scale factor for finding EMOSFET2
gm=sqrt(4*IDQ*KF)
disp("gm =sqrt(4*IDQ*KF)= "+string(gm)+" A/V")// calculating transconductance for EMOSFET2 with IDQ = 0.91 mA




