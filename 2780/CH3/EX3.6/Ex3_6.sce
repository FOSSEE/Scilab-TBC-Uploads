clc
//to calculate values of lambda1 and lambda2
//in fraunhofer diffraction pattern ,the direction of minima is given by e*sintheta=+m*lambda,where m=1,2,.......
//direction of fourth minima (m=4) for wavelength lambda1 is given by e*sintheta1=4*lambda1..........eq(1)
//similarly, e*sintheta2=5*lambda2..........eq(2)
//from eq(1) and eq(2),we get e*sintheta=4*lambda1=5*lambda2....eq(3)
y=0.5            //in cm
f=100             //in cm
theta=y/f                 //in radian
sintheta=theta //theta is very small
e=0.05       //width of slit in cm
lambda1=e*sintheta/4
disp("lambda1="+string(lambda1)+"cm")
//from eq(3) we get,
lambda2=4*lambda1/5
disp("lambda2="+string(lambda2)+"cm")
