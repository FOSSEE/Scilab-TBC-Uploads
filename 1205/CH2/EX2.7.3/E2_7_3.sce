clc;
//F=700N i +1500N j, given forc

Fx=700;//N, Horizontal component
Fy=1500;// N, Vertical Component
tan_theta=Fy/Fx; 
theta=atan(tan_theta);// degrees , angle with +ve x axis
F=Fy/sin(theta);// N
printf("Magnitude of  F is %.2f N\n",F);
