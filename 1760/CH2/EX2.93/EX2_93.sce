   //EXAMPLE 2-93  PG NO-139
N1=100;
Q1=0.05*10^-3;
I1=5;
L1=0.01;
L2=0.01;
K=0.6;
i=1000;     //(di/dt=20/0.02)
M=K*((L1*L2)^0.5);
V=M*i;
disp('mutual induction is = '+string(M)+' H');
disp('voltage induce is = '+string(V)+' v');
