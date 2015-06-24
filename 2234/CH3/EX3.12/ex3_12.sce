clc;
D=25;        //distance of distinct vision in cm
fo=140;    //focal length of eye lens
fe=5;        //focal length in cm
m=-(fo/fe);   //calculating magnifying power
disp(m,"Magnifying power at normal adjustment = ");  //displaying result
m1=-(fo/fe)*(1+(fe/D));    //calculating magnifying power
disp(m1,"Magnifying power atleast distance of distinct vision = ");  //displaying result