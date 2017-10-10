//Section-14,Example-2,Page no.-PC.50
//To calculate the height to which liquid B rises.
clc;
//(y_B/y_A)=(h_B*d_B)/(h_A*d_A)
h_A=0.01               //m
d=1/2                                //d=d_A/d_B
y=1/2                               //y=y_A/y_B
h_B=h_A*d*y                    //m
disp(h_B,'The height to which liquid B rises(m)')
