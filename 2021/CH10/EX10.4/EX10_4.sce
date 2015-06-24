//Finding of Bottom slope, Conveyance
//Given
q=0.1;
B=0.6;
y=0.3;
A=B*y;
n=0.013;
P=1.2;
R=A/P;
//To Find
b=((q^2)*(P))/((A^3)*B^2)
K=A*B*sqrt(R);
disp("Bed of slope ="+string(b)+" no units");
disp("conveyance of channel ="+string(K)+" m^3/sec");
