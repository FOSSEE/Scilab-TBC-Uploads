printf("C(s)=16/(s^2+(0.8+16a)*s+16)");
w=sqrt(16);delta=0.5;
a=(2*d*w-0.8)/16;
t=(%pi-atan(sqrt((1-delta)/delta)))/(w*sqrt(1-delta^2));
mo=exp((-%pi*delta)/sqrt(1-delta^2))*100;
disp(t,"the rise time (in seconds)is ")//seconds
disp(mo,"maximum overshoot(in%)")
