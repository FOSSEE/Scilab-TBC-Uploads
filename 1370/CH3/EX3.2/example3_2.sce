//example3.2
clc
disp("f=50 Hz, N1=480, N2=20, E1=5400 V")
disp("E1=4.44*f*(psi_m)*N1      i.e.     5400=4.44*50*(psi_m)*480")
p=5400/(4.44*50*480)
format(7)
disp(p,"Therefore, (psi_m)[in Wb]=")
disp("E1/E2=N1/N2  i.e.  E2=(N2*E1)/N1=(20*5400)/480")
e=(20*5400)/480
disp(e,"Therefore, E2(in V)=")
