//example6.16
clc
disp("For a given transistor,")
disp("Maximum collector current =I_cm =1A")
disp("Maximum power dissipation =P_d=10W")
disp("Maximum V_CEO =40V")
disp("For maximum output power,")
disp("I_cm=2*I_CQ")
i=1/2
disp(i,"I_CQ=1/2=")
disp("and V_CEO=2*V_CC")
v=40/2
disp(v,"V_CC(in V)=V_CEO/2=")
disp("and  V_cc=V_m=20V for (P_ac)_max")
disp("(P_ac)_max=(V_cc^2)/(2*R_L)")
disp("R''_L=(V_m)/I_m and I_m=I_CQ=0.5 A")
r=20/0.5
disp(r,"R''_L(in ohm)=")
p=(20^2)/80
disp(p,"(P_ac)_max(in W)=(20^2)/(2*40)=")
disp("Now, R''_L=R_L/n^2")
n=sqrt(0.0625)
disp(n,"n=N2/N1=")
n=1/0.25
disp(n,"Therefore N1/N2=1/n=")
disp("Hence the turns ratio of output transformer is 4:1")
