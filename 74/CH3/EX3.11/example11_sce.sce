//chapter 3
//example 3.11
//page 147
fa=150;fmax=150;//given
C1=1*10^-6;// assuming
Rf=1/(fa*2*%pi*C1);//fa=1/2piRfC1
disp(Rf)
fb=10*fa;// safe frequency
disp(fb)
R1=1/(2*%pi*fb*C1);//fb=1/2piC1R1
disp(R1)
Cf=((R1*C1)/Rf);//using R1C1=RfCf
disp(Cf)
Rcomp=(R1*Rf)/(R1+Rf);//rcomp=R1||Rf
disp(Rcomp)// generally Rcomp is selected equal to R1