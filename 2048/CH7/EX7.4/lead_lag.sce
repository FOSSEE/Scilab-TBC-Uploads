// A procedure to design lead controllers, as explained in Fig. 7.12 on page 257.
// 7.4

exec('tf.sci',-1)

w = linspace(0.001,%pi,1000);
a = linspace(0.001,0.999,100);
lena = length(a);
omega = []; lead = [];
for i = 1:lena,
    zero = a(i);
    pole = 0.9*zero;
    sys = tf([1 -zero],[1 -pole],-1);
    frq = w/(2*%pi);
    [frq,repf]=repfreq(sys, frq);            
    [db,phase] =dbphi(repf);
    [y,j] = max(phase);
    omega = [omega w(j)];
    lead = [lead y];
    comega = (pole+zero)/(pole*zero+1);
    clead = zero-pole;
    clead1 = sqrt((1-zero^2)*(1-pole^2));
    clead = clead/clead1;
//    [w(j) acos(comega) y atan(clead)*180/pi]
end
subplot(2,1,1), plot(lead,omega)
xtitle('','','Frequency, in radians'), xgrid;
halt;
subplot(2,1,2), plot(lead,a)
xtitle('','Lead generated, in degrees','Zero location'), xgrid;
