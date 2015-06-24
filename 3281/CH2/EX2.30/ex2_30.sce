//Page Number: 113
//Example 2.30
clc;
//Given
c=3D+8; //m/s
er=2.55;
d=1; //mm
d1=d/1000;//m

//Cut off frequencies
fctm0=0;
disp('Ghz',fctm0,'Cut off frequency for mode TM0:');

fcte1=c/(4*d1*sqrt(er-1));
disp('Ghz',fcte1/10^9,'Cut off frequency at mode TE1:');

fctm1=c/(2*d1*sqrt(er-1));
disp('Ghz',fctm1/10^9,'Cut off frequency at mode TM1:');


//Answers are calculated wrong in book
