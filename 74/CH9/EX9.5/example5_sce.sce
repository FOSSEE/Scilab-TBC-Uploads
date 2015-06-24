//chapter9
//example9.5
//page333
fc=1.5*10^3;
Ri=1;
x=sqrt(2);
Rf=(2-x);//for equal component model
disp(Rf)
Af=1+(Rf/Ri);//pass band gain of equal component model
Wc=2*3.14*fc;
C=1;
R=1/(Wc*C);
disp(R)
R1=R;R2=R;
R1=R*10^7;R2=R*10^7;//to increase R reasonable value we multiply R1 nad R2 by 10^7
disp(R1,R2)
C1=C*10^-7;C2=C*10^-7;//in order to keep value of fc unchanged we have to decrease C1 and C2 by same factor
disp(C1,C2)
