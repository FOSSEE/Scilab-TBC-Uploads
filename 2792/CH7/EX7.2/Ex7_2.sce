clc
alpha_F=.99
disp("alpha_F = "+string(alpha_F)) //initializing value of forward bias current transfer ratio
alpha_R=.25
disp("alpha_R = "+string(alpha_R)) //initializing value of Reverse bias current transfer ratio
kbT = 0.026
disp("kbT = "+string(kbT)+"eV") //initializing value of kbT at 300K
// for part a
Ic1 = 1
disp("Ic1= "+string(Ic1)+"mA")//initializing value of collector current
Ib1 = .02
disp("Ib1= "+string(Ib1)+"mA")//initializing value of base current
VCE= kbT*log((((Ic1*(1-alpha_R))+Ib1)*alpha_F)/(((alpha_F*Ib1)-((Ic1*(1-alpha_F))))*alpha_R))
disp("The saturation voltage is ,VCE= kbT*log((((Ic1*(1-alpha_R))+Ib1)*alpha_F)/(((alpha_F*Ib1)-((Ic1*(1-alpha_F))))*alpha_R))= "+string(VCE)+" V")//calculation
 //for part b
Ic2 = 5
disp("Ic2 = "+string(Ic2)+"mA")//initializing value of collector current 
Ib2 = .075
disp("Ib2 = "+string(Ib2)+"A")//initializing value of base current
VCE1= kbT*log((((Ic2*(1-alpha_R))+Ib2)*alpha_F)/(((alpha_F*Ib2)-((Ic2*(1-alpha_F))))*alpha_R))
disp("The saturation voltage is ,VCE1= kbT*log((((Ic2*(1-alpha_R))+Ib2)*alpha_F)/(((alpha_F*Ib2)-((Ic2*(1-alpha_F))))*alpha_R))= "+string(VCE1)+" V")//calculation



