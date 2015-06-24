//Ex6_3
clc
alpha = 0.98
VBE = 0.7
IE = -2*10^-3
Re = 100
RL = 3.3*10^3
disp("alpha = "+string(alpha))//current gain
disp("VBE = "+string(VBE)+"V")//voltage across base-emitter
disp("IE = "+string(IE)+"A")//emitter current
disp("Re = "+string(Re)+"ohm")//emitter resistance
disp("RL = "+string(RL)+"ohm")//load resistance
//now according to circuit given for the question in the textbook
IC = -alpha * IE
disp("IC = -alpha*IE = "+string(IC)+"A")//collector current
IB = -IC - IE
disp("IB = -IC - IE = "+string(IB)+"A")//base current
VBN = VBE+(abs(IE)*Re)
disp("VBN = VBE+(IE*Re) = "+string(VBN)+"V")//voltage across base and ground(N)
//ASSUMING... value for R1 = 30*10^3 ohm
R1 = 30*10^3
disp("R1 = "+string(R1)+"ohm")//resistancfe R1 as given in circuit
I = VBN/R1
disp("I = VBN/R1 = "+string(I)+"A")//current across resistance R1
//ASSUMING... VCC = 9V
VCC = 9//collector voltage
disp("VCC = "+string(VCC)+"V")
VCN = VCC - (RL*(IC+I+IB))
disp("VCN = VCC - RL*(IC+I+IB)) = "+string(VCN)+"V")//voltage across collector and ground(N)
// according to the given diagram for the question in the textbook, unknown resistance is,
R = (VCN - VBN)/(I+IB)
disp("R = (VCN - VBN)/(I+IB) = "+string(R)+"ohm")//unknown resistance
