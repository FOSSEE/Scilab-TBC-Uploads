//example1.20
clc
disp("The various branch currents are shown in the fig. 1.89. The current through branch OC is zero. Applying KVL to the various loops,")
disp("-4(i2)-(R*i2)-2(i1)+10=0")
disp("i.e   2(i1)+4(i2)+(R*i2)=10    ..Loop AOBA")
disp("-(i1-i2)-1.5(i1-i2)-2(i1)+10=0")
disp("i.e   +4.5(i1)-2.5(i2)=10    ..Loop ACBA")
disp("-(i1-i2)-1.5(i1-i2)+(R*i2)+4(i2)=0")
disp("i.e   -2.5(i1)+6.5(i2)+(R*i2)=0    ..Loop ACBOA")
disp("As current through branch OC is zero, points O and C are equipotential. So drop across AO is same as drop across AC.")
disp("Therefore,    4(i2)=(i1-i2)   i.e    (i1)=5(i2)")
disp("Using in loop A-C-B-A, 4.5*5*(i2)-2.5(i2)=10")
i=10/20
disp(i,"Therefore,    i2(in A)=")
i=5*0.5
disp(i,"and, i1(in A)=")
disp("Using in loop A-O-B-A, (2*2.5)+(4*0.5)+0.5(R)=10")
r=3/0.5
disp(r,"Therefore,   R(in ohm)=")
disp("And current through R is i2=0.5 A")
