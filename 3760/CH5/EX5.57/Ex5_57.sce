clc;
xd=0.85; // reactance along d-axis
xq=0.55; // reactance along q-axis
vt=1; // pu bus voltage 
Ef=1.2; // pu excitation EMF
// P=(Ef*vt*sin(de))/xd + (vt^2/2)*((1/xq)-(1/xd))*sin(2*de) where p is power and de is load angle
// for maximum power dp/dde(derivative with respect to load angle) is zero. Solving we get a quadratic equation whose terms are
p=[ (vt^2/2)*((1/xq)-(1/xd))*4 (Ef*vt)/xd -(vt^2/2)*((1/xq)-(1/xd))*2 ];
l=roots(p);
an=l(2); 
de=acos(an)*(180/%pi); // load angle

pmax=(Ef*vt*sin(de*(%pi/180)))/xd + (vt^2/2)*((1/xq)-(1/xd))*sin(2*de*(%pi/180));
printf('Maximum power output that motor can supply without loss of synchronization is %f pu\n',pmax);
// cos(de)=(vt^2/p)*((xd-xq)/(xd+xq))*sin(de)^3 where de is load angle for minimum excitation EMF
// by trial and error value of de is 
de=63;
P=1; // pu power
Ef=(P-((vt^2/2)*((xd-xq)/(xd*xq))*sind(2*de)))/((vt/xd)*sind(de)); 
printf('Minimum excitation EMF for machine to stay in synchronism is %f pu\n',Ef);
