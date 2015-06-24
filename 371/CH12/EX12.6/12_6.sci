//Controllers and Their Optimisation//
//Example 12.6//
G=20;//smaller time constant in ms//
Tn=4*G;//time constant of the controller in ms//
printf('time constant of the controller=Tn=%fms',Tn);
T1=170;//bigger time constant in ms//
V=T1/(2*G);//gain of the control system//
printf('\nGain of the control system=V=%f',V);
Tf=3.1*G;//time taken by the system to achiecve its final value on step input//
printf('\ntime taken by the system to achieve its final value=Tf=%fms',Tf);
printf('\nMaximum overshoot for a symmetrically optimised system is 43 percent');