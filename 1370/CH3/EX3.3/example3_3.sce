//example3.3
clc
disp("The given values are, (I_0)=10 A, cos(psi_0)=0.25, V1=400 V and f=50Hz")
disp("a) (I_m)=(I_0)*sin(psi_0)=Magnetising component")
p=acosd(0.25)
format(7)
disp(p,"(psi_0)[in degree]=")
i=10*sind(75.522)
disp(i,"I_m(in A)=,x")
disp("(P_i)=Iron loss = Power input on no load")
disp("= (W_0)= [(V1)*(I_0)*cos(psi_0)]= 400*10*0.25")
w=4000*0.25
disp(w,"P_i(in W)=")
disp("c) On no load, E1=V1=400 V and N1=500")
disp("E1=4.44*f*(psi_ m)*N1")
disp("Therefore, 400=4.44*50*(psi_m)*500")
i=400/(4.44*50*500)
format(9)
disp(i,"Therefore, (psi_m)[in Wb]=")
