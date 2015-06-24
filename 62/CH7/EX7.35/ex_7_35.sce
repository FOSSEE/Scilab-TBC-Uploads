clc;
A=[0 1 ;-1/8 3/4];
B=[0;1];
C=[-1/8 3/4];
D=[1];
Mc=[B A*B];
if (det(Mc)<>0) then
    disp("and is controllable",rank(Mc),"Mc has a rank of")
else
    disp("and is uncontrollable",rank(Mc),"Mc has a rank of");
end
Mo=[C;C*A];
if (det(Mo)<>0) then
    disp("and is observable",rank(Mo),"Mo has a rank of")
else
    disp("and is unobservable",rank(Mo),"Mo has a rank of");
end
Hz=ss2tf(syslin('d',A,B,C,D));
disp(Hz,"H(z)=");