clc
disp("the soln of eg 10.8-->Gauss Seidel Method");
for i=1:9,tnew(i)=101,e(i)=1                    //assumed values
end
t=1e-6
while e(1)>t&e(2)>t&e(3)>t&e(4)>t&e(5)>t &e(6)>t& e(7)>t& e(8)>t & e(9)>t do 
    for i=1:9, told(i)=tnew(i),end
    //using eqn 10.10 for the interior nodes and convective boundary conditions for corner nodes
    tnew(1)=(told(2)+50+.5*told(4)+100/3)*3/7
    tnew(2)=(tnew(1)+told(3)+told(5)+100)/4
    tnew(3)=(tnew(2)+told(6)+600)/4
    tnew(4)=(told(5)+.5*tnew(1)+.5*told(7)+100/3)*3/7
    tnew(5)=(tnew(2)+told(8)+told(6)+tnew(4))/4
    tnew(6)=(tnew(3)+tnew(5)+told(9)+500)/4
    tnew(7)=(.5*tnew(4)+.5*told(8)+100/3)*3/4
    tnew(8)=(tnew(5)+.5*tnew(7)+.5*told(9)+100/3)*3/7
    tnew(9)=(tnew(6)+100/3+.5*tnew(8)+250)*3/7
    for i=1:9,e(i)=abs(tnew(i)-told(i))
    end
end
disp("the values of T from 1st element to last is");
for i=1:9,disp(tnew(i));
end