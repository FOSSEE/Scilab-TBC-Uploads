//example2.16
clc
disp("No load current I=2.5 A,")
n=440*2.5
disp(n,"No load input(in W)= (V*I)=")
s=440/550
disp(s,"I_sh(in A)=V/R_sh=")
disp("In dc shunt motor,    I=(I_sh)+(I_a)")
a=2.5-0.8
disp(a,"I_a(in A)=I-(I_sh)=")
p=1.2*(1.7)^2
format(6)
disp(p,"No load armature copper loss(in watts)= (R_a)*(I_a)^2=")
disp("Constant losses= No load input- No lpad armature Cu losses")
c=1100-3.468
format(9)
disp(c,"Therefore,    Constant losses(in Z)=")
disp("Now, full load line current i.e I=32 A")
disp("I=(I_sh)+(I_a)")
a=32-0.8
disp(a,"I_a(in A)=I-(I_sh)=")
p=1.2*(31.2)^2
disp(p,"Full load armature copper loss=(R_a)*(I_a)^2=")
disp("Total losses= Full load armature Cu loss + Constant losses")
l=1168.128+1096.532
disp(l,"Therefore, Total losses(in W)=")
v=440*32
disp(v,"Full load motor input(in W)= V*I =")
v=14080-2264.66
disp(v,"Full load motor output(in W)= Input-Losses=")
d=(1181534)/14080
format(6)
disp(d,"% efficiency at full load= [(Full load Output)/(full load input)]*100=")
disp("Therefore,    Efficiency of motor at full load = 83.91%")
