clc;
v=220; // supply voltage 
n1=2000; // speed of fan motor
ia1=60; // current corresponding to n=2000 rpm
// flux is directly proportional to exciting current and load torque increase as square of speed
// four field coils are connected in two parallel groups also n^2 is directly proportional to armature current therefore
r=sqrt((2*ia1^2)/n1^2); // ratio of armature current corresponding to n2 and n2 where n2=new speed
//  counter EMF are directly proportional to product n*ia and ra(armature resistance) and rs(series) resistance are not given, therefore takig ratio of n1*ia1 and n2*ia2 we can determine value of n2
n2=sqrt((ia1*n1*2)/r);
printf('New speed is %f rpm\n',n2);
ia2=n2*r;
printf('New armature current is %f A\n',ia2); 
