clear
clc
//From the given graph
Cin(1)=0;Cin(2)=8;Cin(3)=4;Cin(4)=6;Cin(5)=0;
E(5)=0;E(6)=0.05;E(7)=0.5;E(8)=0.35;E(9)=0.1;E(10)=0;
for t=8:14
sum1=0;
for p=5:t-1
    if p>10 |(t-p)>5
        h=2;
    else
sum1=sum1+Cin(t-p)*E(p);
Cout(t)=sum1;
end
end
end
t=[1:1:14];
Cout=Cout';
t
Cout
plot(t,Cout)
xlabel('t');ylabel('Cout')

