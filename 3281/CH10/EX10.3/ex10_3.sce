//Page Number: 556
//Example 10.3
clc;
//Given,
er=5.23;
w=10; //mils
t=2.8; //mils
h=7; //mils

dc=((er+1)/2)+(((er-1)/2)*(1/sqrt(1+12*h/w)));
disp(dc,'Dielectric constant:');

//As w/h>1
ci=(120*%pi)/(sqrt(dc)*((w/h)+1.393+0.667*log((w/h)+1.444)));
disp('ohm',ci,'Characterstic impedance:');
