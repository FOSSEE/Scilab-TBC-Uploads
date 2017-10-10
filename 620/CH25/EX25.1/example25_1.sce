vr=30;
vl=40;
v=sqrt((vr^2)+(vl^2));
theta=atan(vl/vr);
disp("the polar form of the total voltage has a magnitude (in V) of") ; disp(v);
disp("with a phase angle (in degrees) of"); disp(theta*180/%pi);