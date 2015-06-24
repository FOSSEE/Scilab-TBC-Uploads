clc
disp("the soln of eg 10.9-->Steady state heat conduction in L-shaped body");
for i=1:9,tnew(i)=101,e(i)=1             //assumed values
end
t=1e-6
while e(1)>t&e(2)>t&e(3)>t&e(4)>t&e(5)>t &e(6)>t& e(7)>t& e(8)>t & e(9)>t do 
    for i=1:9, told(i)=tnew(i),end
    //using the basic discretization eqn. for all the nodes since the boundary conditions vary for each point
    tnew(1)=(told(2)+1.25+told(4))/2.05
    tnew(2)=(.5*tnew(1)+.5*told(3)+told(5)+1.25)/2.05
    tnew(3)=(.5*tnew(2)+.5*told(6)+1.25)/1.05
    tnew(4)=(told(5)+.5*tnew(1)+45)/2
    tnew(5)=(tnew(2)+told(8)+90+tnew(4))/4
    tnew(6)=(.5*tnew(3)+tnew(5)+.5*told(7)+91.25)/3.05
    tnew(7)=(.5*tnew(6)+.5*told(8)+91.25)/2.05
    tnew(8)=(91.25+.5*tnew(7)+.5*told(9))/2.05
    tnew(9)=(47.125+.5*tnew(8))/1.025
    for i=1:9,e(i)=abs(tnew(i)-told(i))
    end
end
disp("the values of T from 1st element to last is");
for i=1:9,disp(told(i));
end