//find %overshoot and peak time
printf("given mr=1.4 and wr=3 rad/sec");
p1=poly([1 -1 0.1275],'x','c')
r=roots(p1)
disp(r)
d=sqrt(0.1505)
mo=exp((-%pi*d)/sqrt(1-d^2))*100;
disp(mo,"maximum overshoot(in %)")
wr=3
w=wr/sqrt(1-2*d^2);
pt=%pi/(w*sqrt(1-d^2));
disp(pt,"peak time (in sec)=");
