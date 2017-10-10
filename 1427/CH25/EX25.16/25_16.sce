//ques-25.16
//Calculating average and rms and most probable velocities of a gas
clc
n1=5; n2=10; n3=4;//number of molecules
v1=2; v2=3; v3=6;//corresponding velocities (in m/s)
Cavg=(n1*v1+n2*v2+n3*v3)/(n1+n2+n3);//average velocity
Crms=sqrt((n1*v1^2+n2*v2^2+n3*v3^2)/(n1+n2+n3));//rms velocity
Cmp=sqrt(2/3)*Crms;//most probable velocity
printf("The average, rms and most probable velocities of the gas are %.2f m/s, %.2f m/s and %.0f m/s.",Cavg,Crms,Cmp);
