//example2.13
clc
disp("Let no load,speed be N_0=1000 rpm")
disp("I_L0=Line current on no load=6 A")
disp("I_L0=(I_a0)+(I_sh)")
s=220/110
disp(s,"(I_sh)[in A]=V/(R_sh)=")
a=6-2
disp(a,"Therefore,  (I_a0)[in A]=(I_L0)-(I_sh)=")
disp("Therefore, Back emf on no load E_b0 can be determined from the voltage equation.")
disp("V=(E_b0)+[(I_a0)+(R_a)]")
disp("Therefore,    220=(E_b0)+(4*0.3)")
b=220-1.2
disp(b,"E_b0(in V)=")
disp("On full load condition,supply voltage is constant and hence,")
s=220/110
disp(s,"(I_sh)[in A]=V/(R_sh)=")
disp("Now,(I_L)=(I_aFL)+(I_sh)")
disp("Therefore,    50=(I_aFL)+2")
f=50-2
disp(f,"Therefore,  (I_aFL)[in A]=")
disp("And,  V=(E_bFL)+[(I_aFL)*(R_a)]")
disp("Therefore,    220=(E_bFL+(48*0.3))")
b=220-(48*0.3)
disp(b,"Therefore,    (E_bFL)[in V]=")
disp("From the speed equation,")
disp("N directly proportional to (E_b)/psi")
disp("But psi is constant as I_sh is constant for both the load conditions")
disp("Therefore,    (N_0)/(N_FL)=(E_b0)/(E_bFL)")
n=(1000*205.6)/218.8
format(7)
disp(n,"Therefore,    (N_FL)[in rpm]=[(N_0)*(E_bFL)]/(E_b0)=")
