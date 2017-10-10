clc;
P=6;//no of poles
Z=300;//no of conductors
phi=0.015;//flux per pole in webers
n=30;//speed in r.p.s.
Ic=80;//current per conductor
Wm=2*%pi*n;
Eav=P*n*phi;//avg. emf per conductor
//when conductors are wave connected
disp('Wave Connected')
a1=2;//no of parallel paths
Ia=Ic*a1;//total current
Ea=Eav*(Z/a1);//E.M.F.
Pa=Ea*Ia;//power developed in armature
Te=Ea*Ia/Wm;//Electromagnetic torque
printf('Generated E.M.F. is %f V.\n',Ea);
printf('Power developed in armature is %f W.\n',Pa);
printf('Electromagnetic Torque is %f Nm.\n',Te); 
//when conductors are lap connected
disp('Lap Connected')
a2=4;//no of parallel paths
Ia2=Ic*a2;//total current
Ea2=Eav*(Z/a2);//E.M.F.
Pa2=Ea2*Ia2;//power developed in armature
Te2=Ea2*Ia2/Wm;//Electromagnetic torque
printf('Generated E.M.F. is %f V.\n',Ea2);
printf('Power developed in armature is %f W.\n',Pa2);
printf('Electromagnetic Torque is %f Nm.',Te2); 
