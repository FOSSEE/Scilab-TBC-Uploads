clc;
ra=0.5; // armature resistance
rf=180; // shunt field resistance
n=1100; // speed at which generator is being driven
n1=1000; // speed for which data is given
disp('case a');
// from the data given in question magnetising curve is drawn (fig 4.46)
If=[ 0 0.2 0.4 0.6 0.8 1 1.2 1.4 ];
Ea=[5 50 100 140 170 190 200 205];
Ean=(n/n1)*Ea
plot(If,Ean);
xlabel('field current');
ylabel('generated EMF');
title('Magnetising curve for n=1100');
// line corresponding to rf=180 ohms to meet saturation curve at 221 V which is no load EMF
Eo=221;
printf('No load EMF is %f V\n',Eo);
disp('case b');
vt=190; // terminal voltage
// from curve armature resistance drop is given by line BC
vd=22.5; // armature resistance drop
ia=vd/ra; // armature current
ifl=vt/rf; // field current
printf('Shunt field current is %f A\n',ifl);
printf('Output current is %f A\n',ia-ifl);
disp('case c');
// OP represents maximum armature resistance drop i.e OP=46.5 V
vd=46.5; 
ia=vd/ra; // armature resistance
// tangent point at R gives field current which is
ifl=0.635; 
printf('Maximum output current is %f A',ia-ifl);
disp('case d');
// under steady state short circuit terminal voltage=0 V and residual flux EMF is
E=5.5; // residual flux EMF
printf('Steady state short circuit current is %f A\n',E/ra);
disp('case e');
Eo=210; // no load voltage
// for Eo OD represents field resistance field current is 1.015
ifl=1.015; // field current
rfn=Eo/ifl; // field resistance
printf('Additional resistance required is %f ohms\n',rfn-rf);
disp('case f');
rf=150; // shunt field resistance
vt=180; // terminal voltage
p=0.04; // reduction in flux due to armature reaction
ifl=vt/rf; // field current
Ea=220*(1-p); // generated voltage
ia=(Ea-vt)/ra; // armature current 
il=ia-ifl; // load current
printf('Load power is %f KW',(vt*il)/1000);  
