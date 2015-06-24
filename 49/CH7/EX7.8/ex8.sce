//CHAPTER 7_ Flow Measurement
//Caption : Constant-Pressure-Drop , Variable-Area Meters(Rotameters)
// Example 8// Page 455
Qd=.1/60    //('enter the maximum flow of water=:')
t=298  //('enter the temperature in k=:')
d=.03  //('enter the float diameter in m=:')
L=0.5  //('enter the total length of rotameter=:')
D=.03  //('enter the diameter of tube at inlet=:')
Vb=25*10^-6  //('enter the total volume of float=:')
Af=7.068*10^-4    // area of float
j=2*9.81*Vb/Af;
y=L;
disp("Tube taper is given by:")
disp("a=(Qd*2)/(%pi*D*y*j^(1/2))")
a=(Qd*2)/(%pi*D*y*j^(1/2));
printf('tube taper is %1.4f m/m(taper)\n',a)
