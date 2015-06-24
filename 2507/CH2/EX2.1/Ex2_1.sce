clc
clear
printf("Example 2.1 | Page number 28 \n\n");
//find work done.

//Given Data
Force = 180 //in N //horizontal force
theta = 30 //in degrees //angle of inclination
distance = 12 //in m //distance moved by block along inclined plane.

printf("Horizontal force acting on block = %.2f N \n",Force);
printf("Angle of inclination = %.2f degrees \n",theta);
printf("Distance moved by block = %.2f m \n\n",distance);

 
//Solution
Work = Force * (distance * cosd(theta)) //in J // Work done
Work = 0.001 * Work // Work done in KJ
printf("Work done by block = %.4f KJ",Work);

