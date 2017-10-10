clc;
B=1; // peak flux density in Tesla
l=0.8; // length of armature conductor
v=20; // velocity of coil 
// for 0< theta <30 coil aa' is moving in zero B-wave, emf for this range is zero
// for 30< theta < 60 coil side a is cutting through B-wave and coil side a' is cutting zero B-wave, therefore
e1=B*l*v; // emf at given position of coil
// for 60< theta < 150 both coil sides are cutting through B-wave
e2=2*B*l*v; // net emf at given position of coil
rms=sqrt((1/%pi)*(((e1^2*%pi*2)/6)+((e2^2*%pi)/2))); 
printf('RMS value of generated emf in one single turn coil is %f V',rms);
