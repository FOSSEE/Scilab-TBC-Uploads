//CHAPTER 4_ Motion and Dimensional Measurement
//Caption : Rosette
// Example 2// Page 168
Eh=625*10^-6  //('enter the circumferential strain=:')
Ea= 147*10^-6   //('enter the longitudinal strain=:')
E=200*10^9    // given
v=0.3;   // poissons ratio
// to calculate circumferential stress
sig_h=E/(1-v^2)*(Eh+v*Ea)*10^-6;
printf('Circumferential stress (hoops stress) is %1.1f MPa\n',sig_h);
sig_a=E/(1-v^2)*(v*Eh+Ea)*10^-6;
printf('Axial stress is %1.2f M Pa\n',sig_a);
// To calculate ratio of stresse
disp("Let the ratio be represented by RR")
RR=sig_h/sig_a;
printf('Ratio of stresses is %fd\n',RR)
disp("Let the ratio of strains be represented by SS")
SS=Eh/Ea;
printf('THe ratio of strains is %1.2f', SS)



