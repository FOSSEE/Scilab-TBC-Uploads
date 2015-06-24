//CHAPTER 4_ Motion and Dimensional Measurement
//Caption : Seismic velocity pickup
// Example 8// Page 235
disp("fn=4")
disp("S=500")
disp("m=0.2")
disp("v=1.5*10^-2")
fn=4  //('enter the natural frequency=:')
S=500  //('enter the sensitivity=:')
m=0.2  //('enter the mass =:')
v=1.5*10^-2  //('enter the maximum velocity with which the surface is vibrating=:')
f=10 //('enter the frequency=:')
r=f/fn;
tou=0.2 // given
w=2*%pi*f;
eo=(v*S*r^2)/sqrt((1-r^2)^2+(2*tou*r)^2);
printf('The peak voltage corresponding to 10Hz frequency is %fd mV\n',eo)
phi1=360*atan(2*tou*r/(1-r^2))/(2*%pi);
printf('phase angle corresponding to the 10 Hz frequency is %fd deg\n',phi1)
f2=20   //('enter the other frequency=:')
r=f2/fn;
eo=(v*S*r^2)/sqrt((1-r^2)^2+(2*tou*r)^2);
printf('The peak voltage corresponding to 20Hz frequency is %fd mV\n',eo)
phi2=360*atan(2*tou*r/(1-r^2))/(2*%pi);
printf('phase angle corresponding to the 20 Hz frequency is %fd deg\n',phi2)















