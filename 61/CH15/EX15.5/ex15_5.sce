//ex15.5
f_c=10*10^3;    //critical frequency in hertz
R=33*10^3;    //Assumption
R2=R;
C=1/(2*%pi*f_c*R);
R1=0.586*R2;    //for butterworth response
disp(C,'Capacitance in Farads')
disp(R1,'R1 in ohms taking R2=33kilo-ohms')
R1=3.3*10^3;    //Assumption
R2=R1/0.586;    //butterworth response
disp(R2,'R2 in ohms taking R1=3.3kilo-ohms')