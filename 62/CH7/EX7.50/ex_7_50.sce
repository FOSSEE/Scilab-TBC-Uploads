clc;
A=[0 1;2 1];
b=[1;-1];
c=[1 -1];
d=[0];
e=spec(A);
if real(e(1))>0 |real(e(2))>0 then
    disp("the sytem is not asymptotically stable")
else
    disp("the system is asymptotically stable")
end
Hs=ss2tf(syslin('c',A,b,c,d));
disp(Hs,"H(s)=")
disp("there is only one pole and it is located at -1 which is in the LHP        hence the system is BIBO stable")
