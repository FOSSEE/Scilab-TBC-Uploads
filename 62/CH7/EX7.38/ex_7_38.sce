clc;
A=[0 3/2;-1/2 2];
B=[1;0];
C=[1 -1];
D=[0];
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
