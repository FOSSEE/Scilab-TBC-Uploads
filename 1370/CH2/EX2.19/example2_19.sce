//example2.19
clc
disp("No load current = I_L0 = 4 A")
s=250/250
disp(s,"I_sh[in A]=V/(R_sh)=")
a=4-1
disp(a,"Therefore,  I_a0(in A)=(I_L0)-(I_sh)=")
r=0.3*(3)^2
disp(r,"Therefore,    No. load armature copper loss(in W)=[(I_a0)^2*(R_a)]=")
o=250*4
disp(o,"No load input(in W) = V*I_L0 =")
c=1000-2.7
disp(c,"Constant losses(in W) = No load input-No load armature copper loss=")
disp("On full load,     I_L=60 A and I_sh=1 A")
j=60-1
disp(j,"Therefore,    I_a(in A)=(I_L)-(I_sh)=")
l=0.3*(59)^2
disp(l,"Full load armature copper loss(in W)= (I_a^2)*R_a=")
l=997.3+2041.6
disp(l,"Total loss on full load=constant losses+ [(I_a)^2*(R_a) loss]=")
disp("Total input on full load = V*(I_L)")
l=250*60
disp(l,"Therefore,    P_in(in W)=")
p=15000-2041.6
format(8)
disp(p,"(P_out)[in W]=(P_in)-Total loss=")
n=1295840/15000
format(7)
disp(n,"% efficiency(n)=[(P_out)*100]/(P_in)=")
