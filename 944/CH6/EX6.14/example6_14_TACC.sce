//example 6.14

clear;
clc;

//Given:
m1=0.01;//molality[m]
v11=1;
v12=2;
Y1=0.71;
m2=0.005;//molality[m]
v21=1;
v22=1;
Y2=0.53;


//To find the activity , molality of the electrolytes
v1=(v11)+(v12);
v2=(v21)+(v22);
a1=(m1^v1)*(v11^v11)*(v12^v12)*(Y1^v1);
a2=(m2^v2)*(v21^v21)*(v22^v22)*(Y2^v2);
x=1/v1;
a1m=a1^x;
m1m=m1*(v11^v11*v12^v12)^x;//molality[m]
y=1/v2;
m2m=m2*(v21*v21*v22^v22)^y;//molality[m]
a2m=a2^y;
disp(a1,'The activity of the electrolyte ZnCl2 is');
disp(a1m,'The mean activity of ZnCl2 is ');
disp(m1m,'The mean molality of ZnCl2 in [m] ');
disp(a2,'The activity of the electrolyte CuSO4 is ');
disp(a2m,'The mean activity of CuSO4 is ');
disp(m2m,'The mean molality of CuSO4 in [m] ');

