//Example 7.9. refer fig.7.17.
clc
format(6)
KN=1*10^-3
lamda=0.01
Ri=100*10^3
IDt=4*10^-3
IDQ=1.5*10^-3
VTN=1.5
VDD=12
VDSQ=7
disp("To determine VDSi")
disp("We have,")
disp("          IDt = KN*(VGst - VTN)^2") 
disp("where the subscript t indicates transition point values.")
VGSt=sqrt(IDt/KN)+VTN
disp(VGSt,"     VGSt(V) =")
disp("Therefore,")
VDSt=VGSt-VTN
disp(VDSt,"      VDSt(V) = VGSt - VTN =")
disp("If the Q-point is in the middle of the saturation region, then VDSQ = 7 V, which gives 10 V peak-to-peak symmetrical output voltage.")
disp("From fig.7.17,")
disp("         VDSQ = VDD - IDQ*RD")
format(5)
RD=(VDD-VDSQ)/IDQ
RD1=RD*10^-3
disp(RD1,"Therefore,  RD(k-ohm) = (VDD - VDSQ) / IDQ =")
disp("Then,     IDQ = KN*(VGSQ-VTN)^2")
VGSQ=(sqrt(IDQ/KN))+VTN
disp(VGSQ,"Therefore,  VGSQ(V) =")
disp("Then,        VGSQ = 2.73 = (R2/(R1+R2))*VDD")
disp("                  = (1/R1)*(R2/(R1+R2))*VDD")
disp("                  = (Ri/R1)*VDD")
disp("By Solving, we get ")
format(6)
R1=1200/2.73
disp(R1,"    R1(k-ohm) =")
format(7)
R2=R1/((12/2.73)-1)
disp(R2,"    R2(k-ohm) =")