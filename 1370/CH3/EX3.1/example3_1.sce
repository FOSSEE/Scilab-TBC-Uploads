//example3.1
clc
disp("(B_m)=1 Wb/m^2, E1=240 V, E/turn=8 V, f=50 Hz")
disp("E1=E/turn * N1        i.e.     240=8*N1")
disp("Therefore, N1=30")
disp("Therefore, N1/N2=E1/E2  i.e  30/N2=240/2400")
disp("N2=300")
disp("E1=4.44*(psi_m)*f*N1      i.e.     240=4.44*(psi_m)*50*30")
p=240/(4.44*50*30)
format(8)
disp(p,"Therefore, (psi_m)[in Wb]=")
a=0.03636/1
disp(a,"(B_m)=(psi_m)/a     i.e.      a(in m^2)=(psi_m)/(B_m)=")
