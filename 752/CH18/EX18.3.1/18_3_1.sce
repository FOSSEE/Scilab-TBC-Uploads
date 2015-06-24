clc;
//page no 693
//prob no. 18.3.1
a=(4/3);//aspect ratio
N=525;//no. of line periods per frame
Ns=40;//no. of suppressed lines
//Determination of no. of pixel periods in line period
Nv=N-Ns;
disp('lines',Nv,'The no. of pixel periods in line period is ');
//Determination of picture height and width
Nh=a*Nv;
disp('pixels',Nh,'The picture height is'); 
Nl=(Nh/0.835);
disp('pixels',Nl,'The picture length is');