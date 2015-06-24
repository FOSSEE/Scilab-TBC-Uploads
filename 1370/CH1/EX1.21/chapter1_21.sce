//example1.21
clc
disp("Use nodal analysis,")
disp("Applying KCL at the two nodes,")
disp("21-I1-I2=0    (1)")
disp("I2-I3-I4=0    (2)")
disp("Analysing various branches,")
disp("I1=(V1-0)/2,  I2=(V1-V2)/3,  I3=(V2-0)/3,  I4=(V2-0)/6")
disp("Using in the equations (1) and (2),")
disp("21-(V1/2)-(V1-V2)/3 = 0")
disp("i.e   0.8333(V1)-0.333(V2) = 21    ...(3)")
disp("[(V1-V2)/3]-(V2/3)-(V2/6)=0")
disp("i.e   0.3333(V1)-0.8333(V2) = 21    ...(4)")
disp("Solving equations (3) and (4),")
disp("0.8333(V1)-0.333(0.3333/0.8333)V1=21")
v=(-21*0.8333)/((0.333*0.3333)-(0.8333)^2)
format(3)
disp(v,"V1(in V)=")
v=(0.3333*30)/0.8333
disp(v,"V2(in V)=")
i=-12/6
disp(i,"Therefore, I(in 6ohm)=I4(in A)=")
disp("The current flows in downward direction in 6ohm resistor.")
disp("Voltage across current soource is the voltage across 2ohm resistance, which is node voltage V1=30 V.")
p=30*21
format(4)
disp(p,"Therefore, power supplied by source P(in W)=V1*21=30*21=")
