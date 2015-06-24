clc
t1=1325; //0C
t2=1200; //0C
t3=25; //0C
L=0.32; //m
k_A=0.84; //W/m 0C
k_B=0.16; //W/m 0C

//L_B=0.32-L_A
//(t1-t2)/(L_A/k_A)=(t1-t3)/((L_A/k_A + L_B/k_B)

L_A=(t1-t2)*k_A/k_B*L/((t1-t3)-(t1-t2)*k_A/k_A+(t1-t2)*k_A/k_B); //m
disp("L_A=")
disp(L_A*1000)
disp("mm")

L_B=0.32-L_A; //m
disp("L_B")
disp(L_B*1000)
disp("mm")


disp("(ii) Heat loss per unit area =")
q=(t1-t2)/L_A*k_A;
disp(q)
disp("W/m^2")


disp("If another layer of insulating material is added, the heat loss from the wall will reduce ;consequently the temperature drop across the fire brick lining will drop and the interface temperature t2 will rise. As the interface temperature is already fixed. Therefore, a satisfactory solutionwill not be available by adding layer of insulation.")