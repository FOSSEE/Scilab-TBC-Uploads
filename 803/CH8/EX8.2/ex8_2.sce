clc
R=[1/2 2/5 2/3];.........................//probability of drawing a red ball
a=1/3;..//probability of drawing any container
Den=sum(R)*a;
b=R(1)*a;
c=R(2)*a;
d=R(3)*a;
disp(b/Den,"ans1");
disp(c/Den,"ans2");
disp(d/Den,"ans3");
