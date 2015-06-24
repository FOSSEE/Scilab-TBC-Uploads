//example2.18
clc
disp("V=200 V, I_a1=30 A")
disp("Resistance across terminals=(R_a)+(R_se)=1.5 ohm")
b=200-45
disp(b,"Therefore,    E_b1(in V)=V-[(I_a1)*(R_a-R_se)]=")
disp("N2=0.6(N1)")
disp("Therefore,    (N1/N2)=(1/0.6)")
disp("Use torque equation,")
disp("T is directly proportional to (psi*I_a) and (I_a)^2")
disp("as  ...  psi is directly proportional to I_a")
disp("Therefore,    (T1/T2)=[(I_a1)/(I_a2)]^2   ..(1)")
disp("Also T is directly proportional to N^3 given,")
disp("(T1/T2)=(N1/N2)^3=(1/0.6)^3   ..(2)")
disp("Equatimg equation (1) and (2),  (1/0.6)^3 = (30/I_a2)^2")
a=sqrt(900*(0.6^3))
format(8)
disp(a,"Therefore,    I_a2(in A)=")
disp("E_b2=V-[(I_a2)*(R_a+R_se+R_x)]=200-13.9427(1.5+R_x)   ..(3)")
disp("Use speed equation,   N directly proportional to [(E_b)/psi] and [(E_b)/(I_a)]        ... psi id directly proportional to I_a")
disp("Therefore,    (N1/N2)=[(E_b1)/(E_b2)]*[(I_a2)/(I_a1)]")
disp("Therefore,    (1/0.6)=(155/E_b2)*(13.9427/30)")
b=155*0.139427*2
format(6)
disp(b,"E_b2(in V)=")
disp("Equating equations (3) and (4), 43.22=200-13.9427(1.5+R_x)")
r=[(200-43.22)/13.9427]-1.5
disp(r,"R_x(in ohm)=")
