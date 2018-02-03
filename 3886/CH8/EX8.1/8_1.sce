//Resultant of system
//Refer fig. 8.5
//Let E be the equilibriant
//using virtual work principle
//-E*cosd(theta)=50*cosd(45)+80*cosd(25)+70*cosd(50)=152.86 N
//-E*sind(theta)=-50*sind(45)+80*sind(25)+70*sind(50)=52.07*sind(25)
//Thus
a=152.86  //N  (R*cosd(theta))
b=52.07  //N  (R*sind(theta))
R=sqrt(a^2+b^2)  //N
theta=atand(b/a)  //degree
printf("Resultant R=%.2f N inclined at theta=%.2f degree w.r.t positive x-axis",R,theta)
