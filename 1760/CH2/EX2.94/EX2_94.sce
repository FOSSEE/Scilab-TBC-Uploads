     //EXAMPLE 2.94    PG NO-139-140
L=0.6;   //LENGTH
a=20*10^-4;   //AREA
MU=(4*%pi*10^-7);
R=L/(MU*a);
N1=1500;
N2=500;
i=250;
M=(N1*N2)/R;
e=M*(i);
disp('R = '+string(R)+' ');
disp('mutual induction is = '+string(M)+' H');
disp('E.M.F INDUCE is = '+string(e)+' V');
