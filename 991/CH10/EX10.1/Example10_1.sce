//Example 10.1. refer fig.10.8.
clc
format(6)
hie=1600
hfe=60
hre=5*10^-4
hoe=25*10^-6
hic=1600
hfc=-61
hrc=1
hoc=25*10^-6
disp("The AC equivalent circuit of the CE-CC amplifier is shown in fig.10.9(a)")
disp("The Second Stage :")
disp("Current gain :")
disp("The current gain of a particular stage is given by")
disp("                  AI = -hf / (1 + ho*ZL)")
disp("For the second stage ZL = RE2 and the current gain of the second stage is")
RE2=4000
AI2=-hfc/(1+(hoc*RE2))
disp(AI2,"                 AI2 = -Ie2 / Ib2 = -hfc / (hoc*RE2) =")
disp("The input impedance Ri of a particular stage is given by")
disp("                  Ri = hi + hf*AI*ZL")
disp("For the second stage,")
Ri2 = hic + (hrc*AI2*RE2)
Ri22=Ri2*10^-3
disp(Ri22,"          Ri2(k-ohm) = hic + (hrc*AI2*RE2) =")
disp("Thus, the CC stage has a high input impedance.")
disp("The voltage gain of a particular stage is")
disp("                  AV = (AI*ZL) / Zi")
disp("For the second stage,")
Re2=4000
AV2=(AI2*Re2)/Ri2
disp(AV2,"                 AV2 = Vo/V2 = (AI2*Re2) / Ri2")
disp("The First Stage :")
RC1=4000
format(5)
RL1=(RC1*Ri2)/(RC1+Ri2)
RL11=RL1*10^-3
disp(RL11,"              RL1(k-ohm) = RC1 || Ri2 =")
disp("Current gain,")
AI1= -hfe/(1+(hoe*RL1))
disp(AI1,"                 AI1 = -IC1/Ib1 = -hfe/(1+(hoe*RL1)) =")
disp("The input impedance of the first stage, which is also the input impedance of the cascaded amplifier is")
Ri1=hie +(hre*AI1*RL1)  // answer in textbook is wrong 
Ri11=Ri1*10^-3
disp(Ri11,"         Ri1(k-ohm) = hie + hre*AI1*RL1 =")
disp("The voltage gain of the first stage is")
format(7)
AV1=(AI1*RL1)/Ri1  // answer in textbook is wrong 
disp(AV1,"                 AV1 = V2/V1 = (AI1*RL1) / Ri1 =")
disp("The output admittance of the first transistor Q1")
RS=600
format(5)
Yo1=hoe-((hfe*hre)/(hie+RS))
Yo0=Yo1*10^6
disp(Yo0,"           Yo1(uA/V) = hoe - ((hfe*hre) / (hie+RS)) =")
disp("The output impedance of the first stage")
format(6)
Ro1=1/Yo1
Ro0=Ro1*10^-3
disp(Ro0,"          Ro1(k-ohm) = 1 / Yo1 =")
disp("The output impedance taking RC1 into account is")
format(5)
Rot1=(Ro1*RC1)/(Ro1+RC1)
Rott=Rot1*10^-3
disp(Rott,"        Rot1(k-ohm) = Ro1 || RC1 =")
disp("This is the effective source resistance RS2 of the second stage")
disp("The output admittance of the second stage")
format(7)
Yo2=hoc-((hfc*hrc)/(hic+Rot1))
disp(Yo2,"            Yo2(A/V) = hoc-((hfc*hrc) / (hic+Rot1)) =")
disp("Output impedance,")
format(4)
RO2=1/(11.525*10^-3)
disp(RO2,"            RO2(ohm) = 1 / Yo2 =")
disp("The amplifier output impedance taking RE2 into account is RO2 || RE2")
format(6)
Ro2=(87*4000)/(87+4000)
disp(Ro2,"Hence,      Ro2(ohm) = (RO2*RE2) / (RO2+RE2) =")
disp("Overall current gain :")
disp("The output or total current gain of both the stages is")
disp("              AI = -Ie2 / Ib1 = (-Ie2/Ib2)(Ib2/IC1)(IC1/Ib1)")
disp("                 = -AI2*(Ib2/Ic1)*AI1")
disp("From fig.10.9(b),")
disp("             Ib2 = (-IC1)(Rc1 / Rc1+Ri2)")
Rc1=4000
format(7)
x=(-Rc1)/ (Rc1+Ri2)
disp(x,"         Ib2/Ic1 = -Rc1/ Rc1+Ri2 =")
format(6)
AI=-AI2*x*AI1
disp(AI,"             AI = -AI2*AI1*(Rc1 / Ri2+Rc1) =")
disp("The overall voltage gain of the amplifier,")
disp("             AV = Vo / V1 = (Vo/V2)(V2/V1)")
AV=AV2*AV1
disp(AV,"            AV = AV2*AV1 =")  // answer in textbook is wrong
disp("The overall voltage gain taking the source impedance into account,")
format(4)
AVs=AV*(Ri1/(Ri1+RS))
disp(AVs,"          AVs = Vo/Vs = Av(Ri1 / Ri1+Rs) =") // answer in textbook is wrong