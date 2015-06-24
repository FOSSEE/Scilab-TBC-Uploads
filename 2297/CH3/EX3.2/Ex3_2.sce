// Example 3.2;Kb , Ke and hystresis and eddy current loss
clc;
close;
clear;
// given :
format('v',7)
f1=50;//frequency in Hz
f2=25;//frequency in Hz
p1=30.1;//power in W
p2=12.4;//power in W
A=[f1 f1^2;f2 f2^2];//making equations
B=[p1;p2];////making equations
X=A\B;//calculating parameters
disp("part (a) Kb and Ke")
disp(X(1,1),"Kh is")
disp(X(2,1),"Ke is")
h25=X(1,1)*f2;//calculating parameters
e25=X(2,1)*f2^2;//calculating parameters
h50=X(1,1)*f1;//calculating parameters
e50=X(2,1)*f1^2;//calculating parameters
disp("part (b) hystresis and eddy current loss ")
disp(h25,"hysteresis loss at 25 Hz is , (W)=")
disp(e25,"eddy current loss at 25 Hz is ,(W)=")
disp(h50,"hysteresis loss at 50 Hz is ,(W)=")
disp(e50,"eddy current loss at 50 Hz is ,(W)=")
W=40;//kg
h50=X(1,1)*f1;//calculating parameters
e50=X(2,1)*f1^2;//calculating parameters
disp("part (c) hystresis and eddy current loss ")
disp(h50/W,"hysteresis loss per kg at 50 Hz is ,(W)=")
disp(e50/W,"eddy current loss per kg at 50 Hz is ,(W)=")
