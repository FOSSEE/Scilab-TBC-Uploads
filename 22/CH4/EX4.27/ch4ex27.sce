omega_0=2*%pi*60; theta = [60 80 87]*(%pi/180);
omega = (0:0.5:1000)'; mag = zeros(3,length(omega));
s=poly(0,'s')
for m =1:length(theta)
    H=syslin('c',((s^2+omega_0^2)/(s^2+2*omega_0*cos(theta(m))*s +omega_0^2)));
    bode(H,10,100);
end
f=omega/((2*%pi))plot(f,mag(1,:),'k-',f mag(2,:),'k--',f,mag(3,:),'k-.');
xlabel('f[hz]'); ylabel('|H(j2/pi f)|');
legend('\theta=60^\circ','\theta = 80^\circ','\theta = 87^\circ',0)