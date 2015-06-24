// Bode plots for Example 5.7 on page 141
// 5.2

exec('label.sci',-1);

omega = linspace(0,%pi);
g1 = 0.5 ./ (cos(omega)-0.5+%i*sin(omega));
mag1 = abs(g1);
angle1 = phasemag(g1);
g2 = (0.5+0.5*cos(omega)-1.5*%i*sin(omega)) ...
   * 0.25 ./ (1.25-cos(omega));
mag2 = abs(g2);
angle2 = phasemag(g2);
subplot(2,1,1)
plot(omega,mag1,omega,mag2,'--');
label('',4,' ','Magnitude',4);
subplot(2,1,2); 
plot(omega,angle1,omega,angle2,'--');
label('',4,'w (rad/s)','Phase',4);

