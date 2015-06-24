//caption:determine_reference_voltage,Er_and_%change_in_terminal_voltage
//example 6.10.22
//page 191
clc;
syms G H 
s=%s;
A=G/.H;
disp(A,"E0/Er=");
G=200;  //gain
H=0.1;
B=eval(A);
disp(B,"E0/Er=");
E0=250;
Er=(1/B)*E0;
disp("for_closed_loop_system:");
disp(float(Er),"reference_voltage,Er=");
disp("for_open_loop_system:");
disp(float(E0/G),"Er=E0/G=");

disp("part (b)")
disp("for closed loop system:")
disp("as the forward path gain is reduced by 10%, the new value of gain,G is 180 ")
G=180  //gain
pcG=10  //percentage change in G
S=1/(1+G*H)
disp(S,"sensitivity,S=");
disp("since S=1/19,     (given)")
pcM=S*pcG  //percentage change in overall gain,M
pcEo=pcM
disp(pcM,"percentage change in overall gain,M=")
disp(pcEo,"percentage change in terminal voltage,Eo=")
disp("for open loop system:")
pcEo=(25/250)*100   
disp(pcEo,"percentage change in terminal voltage,Eo=")