
clc
VTO = 1.5
disp("VTO = "+string(VTO)+"V")
Two_Phi_F = .7 
disp("Two_Phi_F = "+string(Two_Phi_F)+"V")
Gamma = .4
disp("Gamma = "+string(Gamma)+"V^.5")
VDD = 5
disp("VDD = "+string(VDD)+"V") //initialising value of drain voltage

//VOH = VDD-(VTO+(Gamma*(sqrt(VOH+Two_Phi_F)-sqrt(Two_Phi_F))))
//By putting all the values in the equation, we get
disp("Voh-3.16 = 0.4*sqrt(Voh+1.4)")
//squaring both sides and result in quad equation
disp("VOH^2-6.72VOH+9.42")
p1 = poly([9.42, -6.72, 1], 'VOH', 'c') 
a = roots(p1)
VOH = a(1)
disp("The output high is VOH = "+string(VOH)+"V")

