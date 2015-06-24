//exmaple2.30
clc
disp("The generator is shown in the fig. 2.66")
disp("I_L=50 A, V_L=500 V       ...Given")
i=500/250
disp(i,"I_sh(in A)=(V_t)/(R_sh)=")
a=2+50
disp(a,"Therefore, I_a(in A)=(I_L)+(I_sh)=2+50=")
disp("This is the armature current")
e=500+(52*0.05)+(52*0.03)+(2*1)
disp(e,"Therefore, E_g(in V)=(V_t)+[(I_a)*(R_a)]+[(I_a)*(R_se)]+Brush drop =")
disp("This is generated voltage.")
