clear;
clc;
printf("\n Example 2.3");
//Given diameter of the ball mill is 1.2meters
//Speed of rotation is 0.80Hz

//for small particles effective radius is 0.6meters
//critical speed of the rotation
g=9.80;      //acceleration due to gravity is in m^2/sec.
r=0.6;       //effective radius of rotation is in meters.
w = sqrt(g/r);
printf("\nThe critical speed of the rotation is %.2f rad/sec",w);
f=w/(2*%pi); //f is the frequency of the rotation and is in Hz
printf("\nThe critical frequency of the rotation is %fHz\n",f);
optimum_frequency = 0.6*f;
printf("The optimum frequency of the rotation is %.2f Hz",optimum_frequency);
printf("\nGiven frequecy of the rotation is 0.80Hz\n");
printf("The frequency of the rotation should be halved\n");
printf("Therefore the optimal frequency is half the critical frequency");




