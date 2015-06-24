//determine rise time,peak time,setlling time and peak overshoot 
delta=0.5 // damping ratio
w=6//rad/sec
rt=(%pi-atan(sqrt((1-delta)/delta)))/(w*sqrt(1-delta^2));
disp(rt,"the rise time is ")//seconds
pt=%pi/(w*sqrt(1-delta^2));
disp(pt,"peak time is")//seconds
st=4/(delta*w);
mo=exp((-%pi*delta)/sqrt(1-delta^2))*100;
disp(st,"settling time(in seconds)")
disp(mo,"maximum overshoot(in %)")
