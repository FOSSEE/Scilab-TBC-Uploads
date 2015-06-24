//Example 4
//Chapter 45
//clc()
m=3
m1=5
lambda=5460//in A
d=31700//in A
theta=asind((m*lambda)/d)
disp(theta,"The first order diffraction pattern in degree=")
D=m/(d* cosd(theta))
disp("Solution (a)")
disp(D,"The dispersion in radian/A=")
disp("Solution (b)")
N=8000
lambda=5460
R=N*m1
delta_lambda=lambda/R
disp(delta_lambda,"Wave length difference in A=")
