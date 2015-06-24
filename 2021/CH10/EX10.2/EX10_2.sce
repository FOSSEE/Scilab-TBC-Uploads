//Finding of bed slope and conveyance of channel
//Given
q=0.15;
B=.70;
y=.40;
C=60;
A=B*y;
P=B+(2*y);
R=(A/P);
//To Find
sb=((q^2)*(P))/((A^3)*C^2)
K=A*C*sqrt(R);
disp("Bed of slope ="+string(sb)+" no units");
disp("conveyance of channel ="+string(K)+" m^3/sec");
