//Page Number: 5.40
//Example 5.33
clc;
//Given,
m1=3.6D+3; //Hz
m2=1.2D+3; //Hz
m3=m2;
m4=m2;
//(a)Nyquist rate
nr1=2*m1;
disp(nr1,'Nyquist Rate of m1(t)');
nr2=2*m2;
disp(nr2,'Nyquist Rate of m2(t)');
nr3=2*m3;
disp(nr3,'Nyquist Rate of m3(t)');
nr4=2*m4;
disp(nr4,'Nyquist Rate of m4(t)');

//(b) Speed of commutator
c=nr1+nr2+nr3+nr4;
disp('samples/s',c,'Speed of commutator');

//(c)Output bit rate
//Given, 
L=1024;
n=log2(L);
OBR=n*c;
disp('b/s',OBR,'Output bit rate');

//(d)Minimum channel bandwidth
fB=c/2;
disp('Hz',fB,'Minimum Channel Bandwidth');


