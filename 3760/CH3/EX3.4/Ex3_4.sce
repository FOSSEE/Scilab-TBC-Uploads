clc;
p1=4; // number of poles in slip ring induction motor
p2=6; // number of poles in synchronous  motor
f=50; // frequency of supply
ns=(120*f)/p2; // synchronous motor speed
ni=(120*f)/p1; // induction motor speed
disp('case a(1)'); 
// when synchronous motor is driven in direction opposite to the rotating field produced the induction motor stator
nr=ns+ni; // relative speed
F=(p1*nr)/120; 
printf('Frequency of EMF at rotor slip ring terminals is %f Hz\n',F);
disp('case a(2)');
// when synchronous motor is driven in direction of the rotating field produced the induction motor stator
nr=ni-ns; // relative speed
F=(p1*nr)/120; 
printf('Frequency of EMF at rotor slip ring terminals is %f Hz\n',F);
disp('case b'); 
fn=150; // frequency of rotor terminal voltage required
// let new number of pole be pn then relative speed is nr=ns+(120*50)/pn;
pn=((fn*120)-(120*f))/ns; 
printf('Number of poles that the induction motor must have is %f \n',pn);
disp('case c'); 
pi=8; // number of poles in induction motor
ps=(120*f*pi)/((fn*120)-(120*f));
printf('Number of synchronous motor poles required is %f',ps);
