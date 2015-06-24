//Page Number: 196
//Example 4.5
clc;
//Given
c=3D+8; //m/s
a=2;//cm
a1=a/100;//m
b=2.5;//cm
b1=b/100;//m

disp('TE modes');
h01=3.832;
fr=(c/(2*%pi))*sqrt((h01/a1)^2+(%pi/b1)^2);//hz
disp('Ghz',fr/10^9,'Resonant frequency for mode TE010:');

h11=1.841;
fr1=(c/(2*%pi))*sqrt((h11/a1)^2+(%pi/b1)^2);//hz
disp('Ghz',fr1/10^9,'Resonant frequency for mode TE111:');

h21=3.054;
fr2=(c/(2*%pi))*sqrt((h21/a1)^2+(%pi/b1)^2);//hz
disp('Ghz',fr2/10^9,'Resonant frequency for mode TE211:');

disp('TM modes:');
l1=0;
h011=2.405;
fr3=(c/(2*%pi))*sqrt((h011/a1)^2+(%pi*l1/b1)^2);//hz
disp('Ghz',fr3/10^9,'Resonant frequency for mode TM010');

l2=1;
fr4=(c/(2*%pi))*sqrt((h011/a1)^2+(%pi*l2/b1)^2);//hz
disp('Ghz',fr4/10^9,'resonant frequency for mode TM011:');

l3=1;
h111=3.832;
fr5=(c/(2*%pi))*sqrt((h111/a1)^2+(%pi*l3/b1)^2);//hz
disp('Ghz',fr5/10^9,'Resonant frequency for mode TM111:');
