//CHAPTER 4_ Motion and Dimensional Measurement
//Caption : Seismic vibration
// Example 7// Page 232
disp("ty=0.6")
disp("fn=10")
disp("f=25")
disp("M=0.15")
disp("xo=1.5*10^-3")
ty=0.6  //(' enter the damping ratio of seismic vibration pickup=:')
fn=10   //('enter the natural frequency =:')
f=25  //('enter the frequency at which the table is vibrating=')
M=0.15  //( 'enter the seismic mass=:')
xo=1.5*10^-3  //('enter the relative amplitude of the mass=:')
r=f/fn;
disp("xi=xo/((r^2)/sqrt((1-r^2)^2+(2*ty*r)^2));")
xi=xo/((r^2)/sqrt((1-r^2)^2+(2*ty*r)^2));
error=(xi-xo)/xo;
printf('error in measurement is %fd\n',error)
wn=2*%pi*fn;
Ks=wn^2*M;
printf('spring constant is %fd N/m\n',Ks)
B=ty*(2*sqrt(Ks*M));
printf(' damping coefficient of pickup is %fdN-s/m\n',B)