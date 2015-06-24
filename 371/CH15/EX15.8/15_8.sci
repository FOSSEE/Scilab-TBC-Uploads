//The ac Motor Control//
//Example 15.8//
f1a=50;//intial input frequency in hertz//
Ta=2000;//developing torque in induction motor in watts//
Tb=1500;//new value of torque reduced to in watts//
f1b=f1a*sqrt(Ta/Tb);//value of stator frequency increased to in hertz//
printf('value of stator frequency increased to f1b=%fhertz',f1b);
 