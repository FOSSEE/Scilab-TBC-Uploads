//Example 9.1
//Calculate resistor values for underdamped and overdamped responses
printf("Given")
disp('L=10mH and C=100uF')
L=10*10^-3;C=100*10^-6
w0=sqrt(1/(L*C))
printf("w0=%drad/s\n",w0)
//alpha(a)=1/(2*R*C)
disp('For an overdamped response')
disp('a > w0')
//On solving
disp('Hence')
disp('R<5ohm')
disp('For an underdamped response')
disp('a < w0')
//On solving
disp('Hence')
disp('R>5ohm')