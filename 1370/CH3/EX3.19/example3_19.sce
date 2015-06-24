//example3.19
clc
disp("E1=2300 V, E2=230 V, f=50 Hz, B_m=1.1 Wb/m^2 , A=0.05 m^2")
disp("B_m=(phi_m)/A     i.e     1.1=(phi_m)/0.05")
p=1.1*0.05
format(6)
disp(p,"Therefore, (phi_m)[in Wb]=")
disp("E1=4.44(phi_m)*f*N1   i.e.    2300=4.44*0.055*50*N1")
n=2300/(4.44*0.055*50)
format(7)
disp(n,"Therefore,N1 = ")
disp("E2=4.44(phi_m)*f*N2   i.e.    230=4.44*0.055*50*N2")
n=230/(4.44*0.055*50)
disp(n,"Therefore, N2 = ")
