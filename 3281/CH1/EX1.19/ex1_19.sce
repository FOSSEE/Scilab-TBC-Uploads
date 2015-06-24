//Page Number: 43
//Example 1.19
clc;
//Given
sig=5;//mohm/m
er=80*8.85D-12;
eaz=0.1;
u=1.26D-6;

az=-log(0.1);
//(i) Range at 25Khz
f=25D+3;//Khz
w=2*%pi*f;//rad/sec
a=w*(sqrt((u*er/2)*(sqrt(sig^2/(w^2*er^2)+1)-1)));
z=az/a;//m
disp('m',z,'Range at 25khz:');

//(ii) Range at 25Mhz
f1=25D+6;//Mhz
w1=2*%pi*f1;//rad/sec
a1=w1*(sqrt((u*er/2)*(sqrt(sig^2/(w1^2*er^2)+1)-1)));
z1=az/a1;//m
disp('m',z1,'Range at 25Mhz:');
