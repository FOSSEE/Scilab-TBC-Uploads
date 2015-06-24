//example1.13
clc
disp("The various loop current are shown in the fig 1.65(a). The problem consists of current sources hence follow supermesh steps.")
disp("Loops cannot be defined through current sources.So analyse the branches consisting of current sources first")
disp("From branch A-B we can write,")
disp("I_3=2A  ...(1)")
disp("From branch DG we can write,")
disp("I_2-I_1=8A  ...(2)")
disp("Now apply KVL to the loop without current source i.e.")
disp("loop C-D-E-H-G-F-C,")
disp("-(I_3)-(I_1)-3(I_3)-3(I_2)-4(I_2)+24=0")
disp("Therefore,  4(I_3)+7(I_2)+(I_1)=24   ...(3)")
disp("Using equation (1) and equation (2) in (3) we get,")
disp("8+7(I_2)+((I_2)-8)=24")
disp("Therefore  8(I_2)=24")
i=24/8
disp(i,"I_2(in amp)=")
disp("This is current through 4ohm resistor.So power deliverd to the 4ohm resistor is,")
p=9*4
disp(p,"P(in W)=((I_2)^2)*4=")
