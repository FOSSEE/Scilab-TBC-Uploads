clc;
fe=5;  //focal length in cm
D=25;  //distance od distinct vision in cm
mo=30/(1+(D/fe));  //calculating magnification of objective lens
disp(mo,"Magnification produced by objective lens = ");  //displaying result