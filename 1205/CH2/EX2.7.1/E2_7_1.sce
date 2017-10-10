F=800 // N , given force
theta=145 // Degrees , angle with posiyive X axis 

theta=theta*%pi/180;// Conversion into radian

Fx=F*sin(theta);//N, Horizontal component
Fy=F*cos(theta);// N, Vertical Component

printf("Horizontal component of F is %.2f N\n",Fx);
printf("Vertial component of F is %.2f N\n",Fy);
printf("We may write F as \n F = %.2f i + %.2f j",Fx,Fy);
