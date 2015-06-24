//Controllers and Their Optimisation//
//Example 12.5//
G=6;//smaller time constant in ms//
T1=80;//bigger time constant in ms//
Tn=T1;//time constant of the controller in ms//
printf('Time constant of the controller=Tn=%fms',Tn);
V=T1/(2*G);//gain of the control system//
printf('\nGain of the control system=V=%f',V);
Wn=1/(sqrt(2)*G);//Natural frequency of the system in rad/ms//
printf('\nNatural frequency of the system=Wn=%frad/ms',Wn);
Tf=4.7*G;//time taken by the system to achiecve its desired output for firsttime//
printf('\ntime taken by the system to achieve its desired value=Tf=%fms',Tf);
printf('\nMaximum overshoot for a symmetrically optimised system is 4.3 percent');
Tmax=6.24*G;//time at which maximum overload will occur in ms//
printf('\nTime at which maximum overload will occur=Tmax=%fms',Tmax);
