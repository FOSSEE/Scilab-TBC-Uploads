//Determine the voltages at the end of first iteration using gauss seidal method
clear 
clc;
Y=[3-%i*12 -2+%i*8 -1+%i*4 0;-2+%i*8 3.666-%i*14.664 -.666+%i*2.6664 -1+%i*4;-1+%i*4 -.666+%i*2.6664 3.666-%i*14.664 -2+%i*8;0 -1+%i*4 -2+%i*8 3-%i*12];
P2=-.5;
P3=-.4;
P4=-.3;
Q4=-.1;
Q3=-.3;
Q2=-.2;
V2=1;
V3=1;
V4=1;
V10=1.06;
V30=1;
V40=1;
V21=(((P2-%i*Q2)/V2)-Y(2,1)*V10-Y(2,3)*V30-Y(2,4)*V40)/(Y(2,2));
V21acc=1+1.6*(V21-1);
disp(V21acc,"V21acc=");
V31=(((P3-%i*Q3)/V3)-Y(3,1)*V10-Y(3,2)*V21acc-Y(3,4)*V40)/(Y(3,3));
V31acc=1+1.6*(V31-1);
disp(V31acc,"V31acc=");
V41=(((P4-%i*Q4)/V4)-Y(4,2)*V21acc-Y(4,3)*V31acc)/(Y(4,4));
V41acc=1+1.6*(V41-1);
disp(V41acc,"V41acc=");

