//example7.21
clc
disp("The given values are,")
disp("R_f=0.1 ohm, I_DC=10 A, R_s= 0 ohm, E_s(RMS)=30 V")
e=30*sqrt(2)
format(8)
disp(e,"Now, (E_sm)=E_sm(RMS)*sqrt(2) =")
disp("(I_DC)=(2*I_m)/pi")
i=(%pi*10)/2
disp(i,"I_m(in A)=(pi*I_DC)/2=")
disp("Now, (I_m)=(E_m)/(2*R_f+R_s+R_L)")
disp("Therefore, 15.7079 = 42.4264/(2*0.1+R_L)")
disp("Therefore, R_L+0.2=2.7")
r=2.7-0.2
disp(r,"Therefore, R_L(in ohm)=")
p=(10^2)*2.5
disp(p,"P_DC(in W)=(I_DC^2)*R_L=")
disp("P_AC = (I_RMS^2)*(2*R_f+R_s+R_L)")
i=15.7079/sqrt(2)
disp(i,"and, (I_RMS)[in A]=(I_m)/sqrt(2)=")
p=(11.1071^2)*(0.2+2.5)
disp(p,"Therefore, (P_AC)[in W]=")
e=(250*100)/333.092
disp(e,"% eta=(P_DC*100)/(P_AC)=")
