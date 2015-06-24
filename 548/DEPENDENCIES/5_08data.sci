//consider an airfoil with chord length c and the running distance x measured along the chord.The leading edge is located at x/c=0 and the trailing edge x/c=1.
//pressure coefficient variation(Cpu for upper and Cpl for lower):
disp("Cpu=1-300*(x/c)^2  for 0<x/c<0.1");
disp("Cpu=-2.2277+2.2277*(x/c)  for 0.1<x/c<1.0");
disp("Cpl=1-0.95*(x/c)  for 0<x/c<1.0");
//putting the value of x/c as  and integrating (Cpl-Cpu)dy from 0 to 1 we will get normal force coefficient Cn
Cn=integrate('1-0.95*y','y',0,1.0)-integrate('1-300*y^2 ','y',0,0.1)-integrate('-2.2277+2.2277*y','y',0.1,1.0)

