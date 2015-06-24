//example2.23
clc
disp("The generator is shown in the fig 2.64")
disp("The current through R_se is I_L=80 A as the generator is short shunt.")
disp("The drop across R_sh is the sum of the drop across R_se and V_t")
disp("[(I_sh)*(R_sh)]=(V_t)+[(I_L)*(R_se)]")
disp("i.e   100(I_sh)=250+(80*0.03)")
p=2.5+(0.8*0.03)
format(6)
disp(p,"(I_sh)[in A]=")
a=80+2.524
format(7)
disp(a,"(I_a)[in A]=(I_L)+(I_sh)=")
g=250+(82.524*0.05)+(80*0.03)+2
format(9)
disp(g,"E_g(in V)=(V_t)+[(I_a)*(R_a)]+[(I_L)*(R_se)]+Brush drop")
