// Determination of FIR parameters as described in Example 6.22 on page 200.
// 6.14

exec('cra.sci',-1);
exec('filt.sci',-1);
exec('covf.sci',-1);

sig = 0.05;
process_mod = armac([1 -0.5],[0 0.6 -0.2],1,1,1,sig);

u = prbs_a(2225,40);
xi = rand(1,2225,'normal');
y = arsimul(process_mod,[u xi]);
u = [u zeros(1,length(y)-length(u))];
z = [y' u'];

// Plot y as a function of u and xi
exec('label.sci',-1)
subplot(3,1,1), plot(y(1:500)),
label('',4,'','y',4)
subplot(3,1,2), plot(u(1:500))
label('',4,'','u',4)
subplot(3,1,3), plot(sig*xi(1:500))
label('',4,'n','xi',4)

xset('window',1);
[ir,r,cl_s] = cra(detrend(z,'constant'));
ir_act = filt([0 0.6 -0.2],[1 -0.5],...
              [1 zeros(1,9)]);
replot([0,min(min(ir),min(ir_act)) - 0.1,9,max(max(ir),max(ir_act)) + 0.1]);
t = 0:9;  
plot(t,ir_act,'ko'); 
plot2d3(t,ir_act);
legends(['Estimated'; 'Actual'], [2;-9],'ur');
