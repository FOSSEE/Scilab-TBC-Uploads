clc;
vt=1; // pu rated voltage
xd=1; // pu d-axis synchronous reactance
xq=0.6; // pu q-axis synchronous reactance
p=0.9; // pu power being delivered
pf=0.8; // power factor
ia=p/(vt*pf); // pu armature current
de=atand((ia*xq+vt*sind(acosd(pf)))/(vt*pf))-acosd(pf); 
printf('Load angle is %f degrees\n',de);
Ef=vt*cosd(de)+ia*sind(de+acosd(pf))*xd;
printf('Excitation voltage is %f p.u.\n',Ef);
// when loss of excitation takes place Ef=0, for maximum power load angle=45 
de=45; // load angle
pmax=(vt^2*(xd-xq)*sind(2*de))/(2*xd*xq);
printf('Maximum power is %f p.u.\n',pmax);
disp('As maximum power is less than the power being delivered generator will lose synchronism');
