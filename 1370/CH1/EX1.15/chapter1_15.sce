//example1.15
clc
disp("The various node voltage are shown in the fig 1.73(a).")
disp("THe various braanch currents are shown.Applying KCL at various nodes.")
disp("Node 1:  9-I1-I2-I3=0   ..(1)")
disp("Node 1:  I3-I4+4=0   ..(2)")
disp("Node 1:  I2-4-I5=0   ..(3)")
disp("Key Point: Nodes V1 and V3 from supernode region and nodes V1 and V2 from super node region.")
disp("Super node: V1-10=V3  i.e.  V1-V3=10   ..(4)")
disp("Super node: V1+6=V2  i.e.  V1-V2=-6   ..(5)")
disp("From equation (2), I3=I4-4 and from equation (3), I2=I5+4")
disp("Using in equation (1), 9-I1-I5-4-I4+4=0")
disp("i.e  I1+I4+I5=9   ..(6)")
disp("I1=V1/4,  I4=V2/10,  I5=V3/5")
disp("Therefore   (V1/4)+(V2/10)+(V3/5)=9")
disp("i.e  0.25(V1)+0.1(V2)+0.2(V3)=9    ...(7)")
disp("Solving equations(4), (5) and (7) simultaneously,we get")
disp("0.25(V1)+0.1(V1+6)+0.2(V1-10)=9")
v=10.4/0.55
format(7)
disp(v,"Therefore,  V1(in V)=")
disp("putting V1 in eq.(4) and (5), we get ")
v=18.909+6
disp(v,"V2(in V)=")
v=18.909-10
disp(v,"V3(in V)=")
