clear;
clc;

//Example13.5[The Crossed-Strings Method for View Factors]
a=12,b=5;//With od long parallel plates[cm]
c=6;//Distance between the plates
L1=a,L2=b,L3=c;
L4=sqrt((7^2)+(6^2));
L5=sqrt((5^2)+(6^2));
L6=sqrt((12^2)+(6^2));
F12_1=((L5+L6)-(L3+L4))/(2*L1);
F13=(L1+L3-L6)/(2*L1);
F14=(L1+L4+L5)/(2*L1);
F12_2=1-F13-F14;
disp(F12_1,"Therefore from two different methods F12_1=F12_2=",F13,"F13=",F14,"F14=")