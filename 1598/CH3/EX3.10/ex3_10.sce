clc;
fo=0.5;    //focal length of eye lens
D=25;        //distance of distinct vision
L=15;      //length in cm
m=375;   //magnification
fe=(-L*D)/(fo*((L/fo)-m));  //calculating fe
disp(fe,"Focal length of eye lens in cm = ");  //displaying result