//Example 8.5.g //commercial efficiency
clc;
clear;
close;
V=230;// in volts
 I=60;// in amperes
 rpm=955;//turns
 ra=0.2;//resistance of armature in ihms
 rsh=0.15;//shunt field in ohms
 sl=604;//stray losses in watts
 Rm=ra+rsh;// in ohms
 Eb=(V-I*Rm);// back emf in volts
 Dp=Eb*I;//driving power in watts
 mi=V*I;//input power in watts
 Cl=mi-Dp;// copper losses in watts
 mo=Dp-sl;//output of motor
 bhp=mo/746;// horse power in bhp
  Ta=(9.55*Eb*I)/rpm;//total torque in N-m
 Ts=(bhp*60*746)/(2*%pi*rpm);//shaft torque in N-m
 Tl=Ta-Ts;//lost torque in N-m
 nc=(mo/mi)*100;//commercial efficiency in percentge
disp(nc,"commercial efficiency in percentge")
