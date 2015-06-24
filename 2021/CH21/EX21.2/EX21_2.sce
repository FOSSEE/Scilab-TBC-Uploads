//Finding of Force,Power,strokes
//Given
d1=0.3;
d2=0.15;
W=600;
d=1.2;
s=0.25;
//To Find
A1=(%pi/4)*d1^2;
A2=(%pi/4)*d2^2;
F=(A1/A2)*W;
W1=W*(d/1200);
P=W1/1000;
S=(A1/A2)*(d/s);
disp("Force ="+string(F)+" Newtons");
disp("Power required ="+string(P)+" Kilo Watts");
disp("Number of strokes ="+string(S)+" No units");
