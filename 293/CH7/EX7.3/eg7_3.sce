// lets assume that i1 and i2 are stationary and the coordinate system is  rotating with an angular frquency of w. And i1 lies on the x-axis (i.e.    making an angle of 0 degree with the x-axis)
theta = %pi/3; //phase difference between i1 and i2;
I1 = 10*sqrt(2); // peak value of i1
I2 = 20*sqrt(2); // peak value of i2 
I = sqrt(I1^2 + I2^2 + 2*I1*I2*cos(theta)); //peak value of the resultant current 

phi = atan(I2*sin(theta)/(I1 + I2*cos(theta)));// phase difference between the resultant and i1(in radians)
disp(I,"peak value of the resultant current = ")
disp(phi,"phase difference between the resultant and i1 = ")
// result : i = I sin(wt + phi)