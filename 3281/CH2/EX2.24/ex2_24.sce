//Page Number: 108
//Example 2.26
clc;
//Given
c=3D+8; //m/s
a=5; //cm
a1=a/100; //m
f=3D+9; //hz
p11=1.841;
e=1;
w=2*%pi*f;

//(i) Cut off frequency
fc=(p11*c)/(2*%pi*a1);
disp('Ghz',fc/10^9,'Cut off frequency:');

//(ii) Guide wavelength
bet=sqrt(((w*w)/(c*c))-((p11/a1)^2));
lamg=(2*%pi)/bet; 
lamg1=lamg*100; //cm
disp('cm',lamg1,'Guide wavelength:');

//(iii) Wave impedance
zte=(w*%pi*4D-7)/bet;
disp('ohm',round(zte),'Wave impedance:');
