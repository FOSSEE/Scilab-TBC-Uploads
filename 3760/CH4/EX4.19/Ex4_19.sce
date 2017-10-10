clc;
n=1500; // speed of generator
// data is given in question for magnetising curve at n=1500 rpm
If=[ 0 0.4 0.8 1.2 1.6 2 2.4 2.8 3];
Ea=[6 60 120 172.5 202.5 221 231 237 240];
subplot(221);
plot(If,Ea);
xlabel('field current');
ylabel('generated EMF');
title('Magnetising curve for n=1500');
disp('case a')
rf=100; // field resistance
// rf=100 lets say voltage=240 and field current=2.4 which is shown by point A, straight line passing through A and origin meets magnetising current at B which is no load voltage
Eo=230; 
printf('No load voltage is %f V\n',Eo);
disp('case b');
// a line OF is drawn passing through origin slope of this line gives critical resistance
vt=180; // terminal voltage 
ifl=1.2; // field current corresponding to terminal voltage
rfl=vt/ifl;
printf('Critical value of shunt field resistance is %f ohms\n',rfl);
disp('case c');
// Choose S (any point) on linear part of magnetising curve.A vertical line from S meets field resistance line at t and horizontal line at y. Now
e1=90; // terminal voltage corresponding to point s
e2=60; // terminal voltage corresponding to point t
n2=(e2/e1)*n; 
printf('Critical speed for given shunt field resistance is %f rpm\n',n2);
disp('case d');
n3=1200; // speed at which magnetising curve is drawn
// data for magnetising curve at n=1200 can be obtained by multiplying voltage of magnetising curve at n=1500 by factor 1200/1500 and at point C field resistance line for 100 ohms meet at magnetising curve .This point gives no load EMF
EAn=Ea*(n3/n);
subplot(222);
plot(If,EAn);
xlabel('field current');
ylabel('generated EMF');
title('Magnetising curve for n=1200');
Eo=165; 
printf('No load EMF is %f V\n',Eo);
disp('case e');
ia=50; // armature current
ra=0.3; // armature resistance
vd=ia*ra; // armature resistance drop
// To obtain terminal voltage cut OD equal to vd and draw DG parallel to field resistance line. From G draw vertical line  meeting field resistance line at H. Point corresponding to H gives terminal voltage which is 
vt=207; 
printf('Terminal voltage is %f V\n',vt);
