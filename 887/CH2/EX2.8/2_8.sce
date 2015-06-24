clc
//ex2.8
R=20;
G=[0.35,-0.2,-0.05;-0.2,0.3,-0.1;-0.05,-0.1,0.35];      //coefficient matrix
I=[0;10;0]      //current matrix
V=G\I;      //voltage matrix(from G=V*I)
i_x=(V(1)-V(3))/R;
printf(" All the values in the textbook are approximated,hence the values in this code differ from those of textbook")
disp(V(1),'voltage at node1 in volts')
disp(V(2),'voltage at node2 in volts')
disp(V(3),'voltage at node3 in volts')
disp(i_x,'value of current ix in amperes')
