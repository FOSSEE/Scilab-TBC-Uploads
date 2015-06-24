//Mohr's circle

clc;
sigma=((40+80)/2)
disp(sigma,"center of the circle in MPa = ")

//solution a
x=((80-40)^2);
y=30^2;
sigma1=60+sqrt((.25*x)+y)
disp(sigma1,"maxi pricipal stress in MPa = ");// displaying result
sigma2=60-sqrt((.25*x)+y)
disp(sigma2,"mini pricipal stress in MPa = ");// displaying result
theta1=((atand(30/20))/2)
disp(theta1,"pricipal stresses in degree");// displaying result
theta2=(((atand(30/20))+180)/2)
disp(theta2,"pricipal stresses in degree");// displaying result

//solution b
tau=sqrt((.25*x)+y)
disp(tau,"maxi shearing stress in MPa = ");// displaying result
theta3=theta1+45
disp(theta3,"stress in MPa = ");// displaying result
theta4=theta2+45
disp(theta4,"stress in MPa = ");// displaying result

//final solution in matrix form
p=[80 30 ;30 40]
disp(p) 
q=[sigma1 0 ; 0 sigma2]
disp(q)
r=[sigma -tau ; -tau sigma]
disp(r)
