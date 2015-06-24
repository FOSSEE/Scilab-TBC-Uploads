k=8.676*10^-3;//average value of k in per min//
printf('Average value of k=8.676*10^-3per min');
r0=22.4;
rt=0;
rinfinite=-11.1;
t=(2.303/k)*log10((r0-rinfinite)/(rt-rinfinite));
printf('\nThe time at which the mixture is optically inactive=t=%fmin',t);//here in textbook the answer is given wrong,but by solving we get the same result as executed//
