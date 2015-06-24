clc;
//Example 22.4
//page no 298
printf("Example 22.4 page no 298\n\n");
//a centrifugal pump operating at 1800 rpm ,we have to find the impeller diameter needed to develop a head of 200 ft
h=200//height,ft
g=32.2//gravitational acc. ft/s^2
v=sqrt(2*g*h)//velocity needed to develop a head of 200 ft
printf("\n velocity v=%f ft/s",v);
N=1800//pump operating at this rotational speed,in rpm
c=v*60/N//the number of feet that the impeller travels in one rotations
//this c represents the circumference of the impeller  since it is equal to one rotation 
printf("\n circumference c=%f ft/rotation",c);
D=c/%pi//diameter of the impeller
printf("\n diameter D=%f ft",D);
