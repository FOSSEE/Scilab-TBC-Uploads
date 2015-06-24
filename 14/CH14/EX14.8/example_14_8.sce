//Chapter 14
//Example 401
//Page 401
//deltamax
clear;clc;
Pm = 1;
//from previous examples
Pmax_before = 2.1;
Pmax_during = 0.808;
Pmax_after = 1.5;
delta = 28.44 * %pi / 180;
disp('The power angle equations for different times of fault are')
printf("\n Before the fault : \t Pmax * sin(delta) = %.3f * sin(delta)\n",Pmax_before)
printf("\n During the fault : \t r1 * Pmax * sin(delta) = %.3f * sin(delta)\n",Pmax_during)
printf("\n After the fault : \t r2 * Pmax * sin(delta) = %.3f * sin(delta)\n",Pmax_after)
r1 = Pmax_during / Pmax_before;
r2 = Pmax_after / Pmax_before;
delta_max = %pi - asin(Pm / Pmax_after);
cos_delta_cr = (((Pm/Pmax_before) * (delta_max - delta) + (r2 * cos(delta_max) - (r1 * cos(delta)))) / (r2 - r1));
delta_cr = acos(cos_delta_cr);
printf("\n\n r1 = %.3f \n r2 = %.3f \n",r1,r2)
printf("\n\n delta_max = %.3f rad \n cos(delta_cr) = %.3f \n",delta_max,cos_delta_cr)
printf("\n Critical clearing angle is %.3f degrees",delta_cr * 180 / %pi)
