clc;
mr=5;      //weight of rifle in kg
mb=0.015;  //weight of bullet in kg
vb=600;    //velocity of bullet in m/sec
vr=(mb*vb)/mr;  //calculating vr using law of conservation of momentum
disp(vr,"Recoil velocity of rifle in m/sec = ");  //displaying result