//chapter 45
//example 2
//given
//clc()
m=1
lambda=5890//in A
d=25400//in A
theta=asind((m*lambda)/d)
disp("solution (a)")
disp(theta,"The first order diffraction pattern in degree=")
disp("solution (b)")
//given
del_lambda=5.9//in A
delta_theta=(m*(del_lambda))/(d*cosd(theta))
disp(delta_theta,"Angle of seperation in degree=")