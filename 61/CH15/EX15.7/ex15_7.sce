//ex15.7
R4=10^3;
C1=0.022*10^-6;
R7=R4;
C2=C1;
R6=R4;
R5=100*10^3;
f_c=1/(2*%pi*R4*C1);    //critical frequency in hertz for each integrator
f0=f_c    //center frequency
Q=(1+(R5/R6))/3;
BW=f0/Q;
disp(f0,'center frequency in hertz')
disp(Q,' value of Q')
disp(BW,'bandwidth in hertz')