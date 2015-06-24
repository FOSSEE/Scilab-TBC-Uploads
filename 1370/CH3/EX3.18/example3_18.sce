//example3.18
clc
disp("50 kVA, V1=2400 V, V2=240 V, N2=23")
k=1/10
disp("K=N2/N1=1/10=")
i=(50*10^3)/240
format(8)
disp(i,"(I_2)F.L. = VA/V2 = (50*10^3)/240 =")
r=240/208.333
disp(r,"R_L (in ohm)=V2/(I_2)F.L. = 240/208.333= ")
disp("From the e.m.f equation,")
disp("240 = 4.44*50*phi*23")
p=240/(4.44*50*23)
format(6)
disp(p,"Therefore, phi_m(in Wb)=")
