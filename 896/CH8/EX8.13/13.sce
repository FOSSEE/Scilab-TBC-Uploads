clc
//Example 8.13
//Calculate temperature and the velocity of air inside the shock wave
//Let subscript y denote air inside the shock wave and x denote the air outside the shock wave
ratio_T=1.2309//dimentionless
Tx=528//R (Rankine temperature scale)
Ty=ratio_T*Tx//R (Rankine temperature scale)
printf("temperature of air inside the shock wave is %f R\n",Ty);
My=0.7558//dimentionless
cy=1249//ft/s
Vy=My*cy//ft/s
printf("the velocity of air inside the shock wave is %f ft/s",Vy);