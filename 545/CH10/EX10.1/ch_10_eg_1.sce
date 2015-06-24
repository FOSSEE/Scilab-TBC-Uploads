clc
disp("the soln of eg 10.1-->2-D steady heat conduction-Gauss Seidel method ");
for i=1:9,tnew(i)=101,e(i)=1                       //assumed values
end
t=1e-6
//since all the nodes are interior nodes so discretized eqn used is eqn 10.10
while e(1)>t&e(2)>t&e(3)>t&e(4)>t&e(5)>t &e(6)>t& e(7)>t& e(8)>t & e(9)>t do 
    for i=1:9, told(i)=tnew(i),end
    tnew(1)=(told(2)+40+told(4))/4                       //on solving eqns for various nodes we get,
    tnew(2)=(tnew(1)+told(3)+told(5)+20)/4
    tnew(3)=(tnew(2)+told(6)+420)/4
    tnew(4)=(told(5)+tnew(1)+told(7)+20)/4
    tnew(5)=(tnew(2)+told(8)+told(6)+tnew(4))/4
    tnew(6)=(tnew(3)+tnew(5)+told(9)+400)/4
    tnew(7)=(tnew(4)+told(8)+40)/4
    tnew(8)=(tnew(5)+tnew(7)+told(9)+20)/4
    tnew(9)=(tnew(6)+420+tnew(8))/4
    for i=1:9,e(i)=abs(tnew(i)-told(i))
    end
end
disp("the values of T from 1st element to last is");
for i=1:9,disp(tnew(i));
end