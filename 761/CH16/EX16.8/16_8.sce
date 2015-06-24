clc;
//page no 590
//prob no. 16.8
//Design of log periodic antenna to cover freq 100-300MHz & t=0.7,a=30 degree
t=0.7;a=30;
//For good performance converting range to 90MHz to 320MHz
f2=90;f1=320;
//Determination of lengths of elements
L1=142.5/f1;//For freq of 320MHz
L2=L1/t;L3=L2/t;L4=L3/t;L5=L4/t;
disp('The length of elements are');
disp('m',L5,'L5=','m',L4,'L4=','m',L3,'L3=','m',L2,'L2=','m',L1,'L1=',);
//Determination of spacing betn elements
D1=L1/(2*tand(a/2));
D2=D1/t;D3=D2/t;D4=D3/t;D5=D4/t;
disp('The spacing betn elements are');
disp('m',D5,'D5=','m',D4,'D4=','m',D3,'D3=','m',D2,'D2=','m',D1,'D1=',);