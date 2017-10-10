//To determine the node voltages for the given network.
clc;
Z=[(1/5)+(1/%i*2)+(1/4)  -(1/4);(-1/4)  (1/4)+(1/%i*2)+(1/2)]
D=det(Z)
Z_1=[1  -0.25;%i*2.5  0.75+%i*0.5]
D_1=det(Z_1)
V_1=D_1/D                            //Voltage in polar form
disp(V_1,'Voltage at node 1')
Z_2=[0.45-%i*0.5  -0.25;-0.25  0.75+%i*0.5]
D_2=det(Z_2)
V_2=D_2/D                           //Voltage in polar form
disp(V_2,'Voltage at node 2')
