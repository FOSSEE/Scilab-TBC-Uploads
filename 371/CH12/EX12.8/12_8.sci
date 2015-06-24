//Controllers and Their Optimisation//
//Example 12.8//
printf('Response for an AVO system');
G=10;//smaller time constant in ms//
Tf=4.7*G;//time taken by the system to achiecve its final output for firsttime//
printf('\ntime taken by the system to achieve its final value=Tf=%fms',Tf);
printf('\nMaximum overshoot for a symmetrically optimised system is 4.3 percent');
Ts=8.4*G;//settling time in ms//
printf('\nSettling time=Ts=%fms',Ts);
printf('\nResponse for an SO system');
G=10;//smaller time constant in ms//
Tf=3.1*G;//time taken by the system to achiecve its final output for firsttime//
printf('\ntime taken by the system to achieve its final value=Tf=%fms',Tf);
printf('\nMaximum overshoot for a symmetrically optimised system is 43 percent');
Ts=16.6*G;//settling time in ms//
printf('\nSettling time=Ts=%fms',Ts);