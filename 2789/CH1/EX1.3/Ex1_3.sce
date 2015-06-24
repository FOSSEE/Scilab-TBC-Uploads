clear;
clc;
//page no. 17

r1 = 0.25;// radius of cylinder in feet
l = 2;//length of cylnider in feet
r2 = 0.30;// radius of co-axial cylinder in feet
mu = 0.018;//lb-sec/ft^2
torque = 0.25;// in ft-lb
dv_dy1 = torque/(4*%pi*mu*r1^2);//velocity gradient at radius = 0.25 in fps/ft
dv_dy2 = torque/(4*%pi*mu*r2^2);//velocity gradient at radius = 0.30 in fps/ft
V1 = integrate('-torque/(4*%pi*mu*r^2)','r',r2,r1);// velocity in fps
rpm1 = V1*60/(2*%pi*r1);
V2 = torque*(r2-r1)/(4*%pi*mu*r1^2);//in fps
rpm2 = V2*60/(2*%pi*r1);
hp = 2*%pi*r1*(rpm1/(550*60));
printf('Velocity gradient at the inner cylinder wall is %.1f fps/ft and \n at the outer cylinder wall is %.1f fps/ft',dv_dy1,dv_dy2);
printf('\n rpm = %.1f  and approximate rpm = %.1f \n hp = %.5f ',rpm1,rpm2,hp);
