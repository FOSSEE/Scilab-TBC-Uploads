//EXAMPL2-92  PG NO-136
L=0.5;
R=25;
C=10^-6;
Wo= ((L- (R*R*C))/(5*10^-6*(0.5*0.5)))^0.5;
Q=(Wo*L)/R;
B.W=Wo/Q;
disp('FREQUENCY is = '+string(Wo)+' rad/sec');
disp('Q is = '+string(Q)+' ');
disp('band width is = '+string(B.W)+'rad/sec');
