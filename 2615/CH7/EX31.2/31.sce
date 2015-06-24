clc
//initialisation of variables
w=2800//mm
v=21//m/min
x=30//m/min
q=2.8//mm
//CALCULATIONS
Tc=q/v*60//sec
Ts=q/x*60//sec
//RESULTS
printf('the time required for thecutting stroke=% f sec',Tc)
printf('The time required for the return stroke=% f sec',Ts)
