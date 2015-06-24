clc
clear
printf("Example 2.2 | Page number 31 \n\n");
//find the magnitude and direction of work for systems agent and body.

//Given Data
mass_body = 2 //in kg //mass of body
L = 5 //in m //vertical distance
g = 9.8 //in m/s^2 //acceleration due to gravity

printf("Mass of body = %.2f kg \n",mass_body);
printf("Vertical distance = %.2f m \n",L);
printf("Acceleration due to gravity = %.2f m/s^2 \n\n",g);

 
//Solution
Work_done_by_agent = mass_body * g * L //in Nm //work done by agent
Work_done_by_body = -1*Work_done_by_agent
printf("Work done by agent = %.2f Nm\n",Work_done_by_agent);
printf("Work done by body = %.2f Nm",Work_done_by_body);

