clear;
close;
clc;
n=-2:4;
x1=[0 0 0 0 2 0 0];
y1=[0 0 0 0 1 2 0];
x2=[0 1 0 0 0 0 0];
y2=[0 2 1 0 0 0 0];
x3=[0 0 0 1 2 0 0];
y3=[0 0 0 2 3 1 0];
subplot(3,2,1);plot2d3(n,x1);plot(n,x1,'r.');xtitle('x1')
subplot(3,2,2);plot2d3(n,y1);plot(n,y1,'r.');xtitle('y1')
subplot(3,2,3);plot2d3(n,x2);plot(n,x2,'r.');xtitle('x2')
subplot(3,2,4);plot2d3(n,y2);plot(n,y2,'r.');xtitle('y2')
subplot(3,2,5);plot2d3(n,x3);plot(n,x3,'r.');xtitle('x3')
subplot(3,2,6);plot2d3(n,y3);plot(n,y3,'r.');xtitle('y3')
disp("it can be seen that x3[n]=x1[n]+x2[n-2] therefore for linear system        y3[n]=y1[n]+y2[n-2]")
figure
subplot(4,1,1);plot2d3(n,y1);plot(n,y1,'r.');xtitle('y1')
subplot(4,1,2);plot2d3(n+2,y2);plot(n+2,y2,'r.');xtitle('y2[n-2]')
subplot(4,1,3);plot2d3(n,y1+[0 0 y2(1:find(n+2==4))]);plot(n,y1+[0 0 y2(1:find(n+2==4))],'r.');xtitle('y1[n]+y2[n-2]')
subplot(4,1,4);plot2d3(n,y3);plot(n,y3,'r.');xtitle('y3[n]')
disp("from the figure y3[n]<>y1[n]+y2[n-2] therefore the system is not linear")
