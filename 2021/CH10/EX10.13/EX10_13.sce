//Finding of Normal Depth
//Given
w=6;
q=5;
sb=0.006;
n=0.014;
B=6;
//To Find
a=(q/(B^(8/3)*sb^(1/2)))^(3/5);
b=(1+(0.855)*((q/B^(8/3)*sb^(1/2)))^(3/5));
y=a*b;
disp("Normal Depth ="+string(y)+" meter");
