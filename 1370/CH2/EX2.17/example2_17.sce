//example2.17
clc
disp("R_a=0.08 ohm, E_b1=242 V")
disp("i)    V=(E_b1)+[(I_a1)*(R_a)]")
disp("Therefore,    250=242+[(I_a1)*0.08]")
a=8/0.08
disp(a,"I_a1(in A)=")
disp("ii)   At start,   N=0 hence E_b=0")
a=250/0.08
disp(a,"(I_a(start))[in A]=V/(R_a)=")
disp("iii)  If  (I_a2)=120 A then,")
b=250-(120*0.08)
disp(b,"E_b2(in V)=V-[(I_a2)*(R_a)]=")
disp("iv)   Machine is running as a generator, shown in the fig 2.62")
disp("Let induced emf as generator be E_g")
g=250+(87*0.08)
format(7)
disp(g,"E_g(in V)=(V_t)+[(I_a)*(R_a)]=")
disp("In both cases as a motor or genrator E is directly prportional to (N*psi)")
disp("As flux is constant,  E is directly proportional to N")
disp("Therefore,    (E_b/E_g)=(N_m/N_g)")
disp("where     N_m= Speed as a motor   and    N_g= Speed as a generator")
disp("Therefore,    (242/256.96)=(1500/N_g)")
n=(1500*256.96)/242
disp(n,"N_g(in rpm)=")
