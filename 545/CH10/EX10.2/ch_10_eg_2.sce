clc
disp("the soln of eg 10.2-->");
for i=1:5,tnew(i)=101,e(i)=1
end
t=1e-6
//since there is no source term so we get the following eqns.
while e(1)>t&e(2)>t&e(3)>t&e(4)>t&e(5)>t do 
    for i=1:5, told(i)=tnew(i),end
    tnew(1)=(told(2)*2+300)/4
    tnew(2)=(tnew(1)+told(3)+300)/4
    tnew(3)=(tnew(2)+told(4)+200)/4
    tnew(4)=(told(5)+tnew(3)+300)/4
    tnew(5)=(2*tnew(4)+300)/4
    for i=1:5,e(i)=abs(tnew(1)-told(i))
    end
end
disp("the values of T from 1st element to last is");
for i=1:5,disp(tnew(i));
end