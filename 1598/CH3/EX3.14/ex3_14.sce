clc;
fo=75;    //focal length of eye lens
D=25;        //distance of distinct vision
fe=5;      //focal  of eye lens in cm
M=-(fo/fe)*(1+(fe/D));  //calculating M
disp(M,"Magnifying power = ");  //displaying result