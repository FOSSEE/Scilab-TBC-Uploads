clc;
v=2000; // rated voltage of motor
xsm=2; // synchronous reactance of motor
xsg=3; // synchronous reactance of generator
xt=1.5; // transmission line reactance
ia=100; // current drawn by motor
pf=1; // power factor
disp('case a');
vt=v/sqrt(3); // rated per phase voltage
Efm=floor(sqrt(vt^2+(ia*xsm)^2)); // excitation EMF
printf('Excitation EMF for motor is %f V\n',Efm);
Efg=sqrt(vt^2+(ia*(xsg+xt))^2); // excitation EMF
printf('Excitation EMF for alternator is %f V\n',Efg);
disp('case b');
de1=acosd(vt/Efm); // load angle for motor
de2=acosd(vt/Efg); // load angle for alternator
de=de1+de2; // power angle between Efm and Efg
pt=(Efg*Efm*sind(de))/(xsm+xsg+xt);
P=pt*3;
printf('Per phase power transfer between alternator and motor is %f KW\n',pt/1000);
printf('Net power transfer between alternator and motor is %f KW\n',P/1000);
disp('case c');
// from phasor diagram fig 5.54
ia=sqrt(Efm^2+Efg^2)/(xsm+xsg+xt); 
// for maximum transfer of power , power angle=90 degrees
de=90
pmax=(Efg*Efm*sind(de))/(xsm+xsg+xt);
P=pmax*3;
printf('Per phase maximum power transfer between alternator and motor is %f KW\n',pmax/1000);
printf('Net maximum power transfer between alternator and motor is %f KW\n',P/1000);
// from phasor diagrams determining various parameters needed to find power factor
be=acosd(Efm/(ia*(xsm+xsg+xt)));
Vp=sqrt((Efm-ia*xsm*cosd(be))^2+(ia*xsm*sind(be))^2); // phase voltage
Vl=sqrt(3)*Vp; // line voltage
printf('Armature current for given condition is %f A\n',ia);
printf('Terminal voltage of synchronous motor is %f V\n',Vp);
// from phasor diagram
aoc=asind((ia*xsm*sind(be))/Vp);
pf=cosd(90-be-aoc); 
printf('Power factor angle of motor is %f leading',pf);
