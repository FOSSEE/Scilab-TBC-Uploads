clc;
D=25;        //distance of distinct vision
u=-9;    //object distance in cm
fe=10;  //focal length in cm
v=(-90/1);   //using (1/f)=(1/v)-(1/u)
m=(v/u);  //calculating m
M=D/u;    //calculating Magnifying power of lens
disp(m,"Magnification of lens = ");   //displaying result
disp(-M,"Magnifying Power = ");     //displaying result