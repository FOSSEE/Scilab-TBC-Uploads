clc;
F=300 // N , given force
AB=sqrt(8^2+6^2);// m Length of AB
cos_alpha=8/AB;
sin_alpha=-6/AB;
Fx=F*cos_alpha;//N, Horizontal component
Fy=F*sin_alpha;// N, Vertical Component

printf("Horizontal component of F is %.2f N\n",Fx);
printf("Vertial component of F is %.2f N\n",Fy);
printf("We may write F as \n F = %.2f i + %.2f j",Fx,Fy);
