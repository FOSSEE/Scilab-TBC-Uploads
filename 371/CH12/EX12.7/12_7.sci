//Controllers and Their Optimisation//
//Example 12.7//
G=10;//smaller time constant in ms//
Tf=4.7*G;//time taken by the system to achiecve its final output for firsttime//
printf('time taken by the system to achieve its final value=Tf=%fms',Tf);
printf('\nMaximum overshoot for a symmetrically optimised system is 4.3 percent');
Tmax=6.24*G;//time at which maximum overshoot will occur in ms//
printf('\nTime at which maximum overshoot will occur=Tmax=%fms',Tmax);
Ts=8.4*G;//settling time in ms//
printf('\nSettling time=Ts=%fms',Ts);
