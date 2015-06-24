//exmaple3.21
clc
disp("E1=1900 V, E2=240 V, f=50Hz, B_m=1.5 Wb/m^2, emf/turn = E1/N1 = E2/N2")
disp("Therefore, 1.5=1900/N1=240/N2")
n=1900/1.5
format(8)
disp(n,"Therefore, N1=")
n=240/1.5
disp(n,"and, N2=")
disp("E1=4.44*(phi_m)*f*N1  i.e.  1900=4.44(phi_m)*50*1267")
p=1900/(4.44*50*1267)
format(9)
disp(p,"Therefore, (phi_m)[in Wb]=")
disp("(B_m)=(phi_m)/A  i.e.  1.5=(6.7567*10^-3)/A")
a=(6.7567*10^-3)/1.5
format(10)
disp(a,"Therefore, A(in m^2)=")
i=10000/240
format(7)
disp(i,"I2(in A)=Output VA/E2 = (10*10^3)/240 = ")
