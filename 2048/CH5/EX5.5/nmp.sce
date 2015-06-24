// Bode plot of minimum and nonminimum phase filters, discussed in Example 5.9 on page 145
// 5.5

exec('label.sci',-1);

omega = linspace(0,%pi);
ejw = exp(-%i*omega);
G1 = 1.5*(1-0.4*ejw); 
mag1 = abs(G1); angle1 = phasemag(G1);
G2 = -0.6*(1-2.5*ejw);
mag2 = abs(G2); angle2 = phasemag(G2);
subplot(2,1,1);
plot(omega,mag1,omega,mag2,'--');
label('',4,' ','Magnitude',4);
subplot(2,1,2);
plot(omega,angle1,omega,angle2,'--');
label('',4,'w (rad/s)','Phase',4);

