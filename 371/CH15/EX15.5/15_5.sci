//The ac Motor Control//
//Example 15.5//
V=415;//operating input voltage of induction motor in volts//
S=0.04;//input slip//
r2=1;//rotor resistance referred to stator in ohms//
T=(S*V^2)/r2;//torque developed by motor in watts//
printf('torque developed by motor=T=%fwatts',T);
f1=75;//input stator frequency in hertz//
f2=S*f1;//rotor frequency in hertz//
printf('\nvalue of rotor frequency=f2=%fhertz',f2);
 