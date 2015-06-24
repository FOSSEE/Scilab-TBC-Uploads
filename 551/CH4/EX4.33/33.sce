clc
m=1; //kg
p1=5; //bar
V1=0.02; //m^3
V2=0.08; //m^3
p2=1.5; //bar

function p=f(V)
    p=a+b*V;
endfunction

// 5=a+0.02*b
// 1.5=a+0.08*b
// Solving above two equations

A=[1,0.02;1,0.08];
B=[5;1.5];
X=inv(A)*B;
a=X(1,1);
b=X(2,1);

disp("(i) p-V diagram")

V=0.02:0.001:0.08;
p=a+b*V;
plot(V,p,'b')

V=[0.0667 0.08];
p=[1.5 1.5];
plot(V,p,'g')

V=0.02:0.001:0.0667;
function p=fa(V)
    p=0.1/V;
endfunction

plot(V,fa,'r')

V=[0.0667 0.0667];
p=[1.5 0];
plot(V,p,'--')

xtitle("p-V diagram", "V(m^3)", "p(bar)");
legend("p=a+b*V","p=constant","pv=constant")


disp("(ii) Work done and heat transfer")

W_12=integrate('(a+b*V)*10^2','V',V1,V2);
disp("Work done by the system =")
disp(W_12)
disp("kJ")

p3=p2;
V3=p1*V1/p3;
W_23=p2*(V3-V2)*10^2; //kJ

W_31=p3*V3*log(V1/V3)*10^2; //kJ
disp("Work done on the system =")
disp(W_31)
disp("kJ")

W_net=W_12+W_23+W_31;
disp("Net work done =")
disp(W_net)
disp("kJ")

Q_net=W_net;
disp("Heat transferred during the complete cycle =")
disp(Q_net)
disp("kJ")