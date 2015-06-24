//Mohr's circle

clc;
radius=((14+28)/2)
disp(radius,"radius of the circle in degree = ")
sigma1=(7+radius *cosd(60))
disp(sigma1," the circle in MPa = ")
sigma2=(7-radius *cosd(60))
disp(sigma2," the circle in MPa = ")
tau1=radius*sind(60)
disp(tau1," orientation of the stresses in MPa = ")
