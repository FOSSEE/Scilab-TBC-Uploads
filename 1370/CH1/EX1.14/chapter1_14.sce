//example1.14
clc
disp("The various node voltages and currents are shown in the fig 1.72(a).")
disp("At node 1,   -(I_1)-(I_2)-(I_3)=0")
disp("Therefore,  -[(V_1-15)/1]-[V_1/1]-[(V_1-V_2)/0.5]=0")
disp("Therefore,  -(V_1)+15-(V_1)-2(V_1)+2(V_2)=0")
disp("Therefore,  4(V_1)-2(V_2)=15   ..(1)")
disp("At node 2,  (I_3)-(I_4)-(I_5)=0")
disp("Therefore,  [(V_1-V_2)/0.5]-[(V_2)/2]-[((V_2)+20)/1]=0")
disp("Therefore,  2(V_1)-2(V_2)-0.5(V_2)-(V_2)+20=0")
disp("Therefore,  2(V_1)-3.5(V_2)= -20   ...(2)")
disp("Multiplying equation (2) by 2 and subtracting from equation (1) we get,")
disp("5(V_2)=55")
v=55/5
disp(v,"V_2(in V)= ")
v=(-20+(3.5*11))/2
format(5)
disp(v,"and,  V_1(in V)= ")
disp("Hence the various currents are,")
i=9.25-15
disp(i,"(I_1)(in A)=[(V_1)-5]/1=")
disp("i.e I1=5.75A  upward")
i=9.25/1
disp(i,"(I_2)(in A)=(V_1)/1=")
i=(9.25-11)/0.5
disp(i,"(I_3)(in A)=[(V_1)-(V_2)]/0.5=")
disp("i.e I3=3.5A to left")
i=11/2
disp(i,"(I_4)(in A)=(V_2)/2=")
i=11-20
disp(i,"(I_5)(in A)=[(V_2)-20]/1=")
disp("i.e I5=9A upward")
