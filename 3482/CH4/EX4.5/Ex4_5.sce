clc;
//page 169

//At equillibrium  +sum(Mo)=0,
//s=r*theta;
//F=k*s=k*r*theta;
k=45;//N/mm
r=75;//mm
W=1800;//N
l=200;//mm


// trial and error 
printf("Probable answers by trial and error method are \n");
for i=0:0.1:%pi/2 // from 0 to 90 degrees

difference=(sin(i)-k*r^2*(i)/(W*l));
if difference<0.01 then   // Approximation
   theta=i;
   theta=theta*180/%pi;//Degrees , conversion into degrees
printf("Theta=%.2f degrees\n",theta); 
end
end
