//Page Number: 198
//Example 4.9
clc;
//Given
c=3D+8; //m/s
a=2.286;//cm
a1=a/100;//m
b=1.106;//cm
b1=b/100;//m

//For fr1=9.3D+9;
fr1=9.3D+9;//hz
lamr1=c/fr1;//m
c1=(2*a1)/sqrt((((2*a1)/lamr1)^2)-1);

//For fr2=10.2D+9;
fr2=10.2D+9;//hz
lamr2=c/fr2;//m
c2=(2*a1)/sqrt((((2*a1)/lamr2)^2)-1);

r=c1-c2;
disp('cm',r*100,'Range of piston movement:');
