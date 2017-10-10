clc;
c1=0.0000000033;
c2=0.0000001;
L=0.000047;
cT=(c1*c2)/(c1+c2);
fr=1/(2*3.14*(L*cT)^0.5);
Xc1=117; //for fr value
Xc2=3.87;
av1=Xc2/Xc1;
av2=c1/c2;
disp('using equation 18.3',av1,"av1=");//The answers vary due to round off error
disp('using equation 18.4',av2,"av2=");//The answers vary due to round off error




