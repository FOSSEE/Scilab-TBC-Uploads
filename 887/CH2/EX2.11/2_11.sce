clc
//ex2.11
disp('KCL for a supernode enclosing the conrolled voltage source')
disp('(V1/R2)+((V1-V3)/R1)+((V2-V3)/R3)=is')
disp('KCL at node 3')
disp('(V3/R4)+((V3-V2)/R3)+((V3-V1)/R1)=0')
disp('KCL at the reference node')
disp('(V1/R2)+(V3/R4)=is')
disp('From the closed loop with V1,Vx and V3')
disp('Vx=V3-V1')
disp('Applying KVL')
disp('V1=0.5(V3-V1)+V2')
disp('The last KVL equation along with any two of the first three KCL equations forms an independent set that can be solved for the node voltages.')
