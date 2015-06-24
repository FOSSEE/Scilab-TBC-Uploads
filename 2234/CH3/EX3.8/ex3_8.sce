clc;
u=-6;    //object distance in cm
fo=4;    //focal distance in cm
fe=6;  //focal length in cm
D=25; //distance of distinct vision in cm
v=(12);   //using (1/f)=(1/v)-(1/u)
m=(v/u)*(1+(D/fe));  //calculating m
disp(v,"Image distance in cm = ");   //displaying result
disp(-m,"Magnifying Power = ");     //displaying result