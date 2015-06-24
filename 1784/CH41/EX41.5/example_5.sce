//Example 4
//Chapter 41
//clc()
n2=1.33
n1=1.50
theta_c=asind(n2/n1)
disp(theta_c,"Angle theta_c in degree=")
disp("Actual angle of indices =45 is less than theta_ c, so there \n is no internal angle reflection")
disp("angle of refraction=")
x=n1/n2
theta_2=asind(x*sind(45))
disp(theta_2,"theta_2 in degree=")