//Page Number: 99
//Example 2.14
clc;
//Given,
c=3D+8; //m/s
a=1.5;//cm
a1=a/100;//m
b=0.8;//cm
b1=b/100;//m
mu=1/c*c;
e=4;
w=%pi*1D+11;
n=377;

//(i) Frequency of operation
f=w/(2*%pi);
f1=f/1D+9;//ghz
disp('Ghz',f1,'Frequency of operation:');

//(ii) Cutt off frequency
fc=(c*sqrt((1/a1)^2+(3/b1)^2))/(2*sqrt(e));
fc1=fc/1D+9;//ghz
disp('Ghz',fc1,'Cut off frequency:');

//(iii) Phase constant
bet=(w*sqrt(e)*sqrt(1-(fc/f)^2))/(c);
disp('rad/m',bet,'Phase constant:');

//(iv) Propogation constant
gam=%i*bet;
disp('rad/s',gam,'Propogation constant:');

//(v) Intrensic wave impedance
zte=(n/sqrt(e))/sqrt(1-(fc/f)^2);
ztm=(n/sqrt(e))*sqrt(1-(fc/f)^2);
disp('Ohm',ztm,'ZTM13','Ohm',zte,'ZTE13','Intrinsic wave impedance:');
