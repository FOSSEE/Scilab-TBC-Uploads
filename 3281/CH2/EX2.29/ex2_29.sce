//Page Number: 112
//Example 2.29
clc;
//Given
c=3D+8; //m/s
fc=9D+9; //Hz
er=1; 
er1=4;
p11=1.841;

//(i) air filled
a=(p11*c)/(2*%pi*fc*sqrt(er));
disp('cm',a*100,'Inside diameter if air filled:');
//(ii) dielectric field
a1=(p11*c)/(2*%pi*fc*sqrt(er1));
disp('cm',a1*100,'Inside diameter if dielectric filled:');

//Answers are calculated wrong in book
