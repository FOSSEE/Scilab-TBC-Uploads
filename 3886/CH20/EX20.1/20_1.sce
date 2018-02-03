//Fly wheel
//omega=3*t^3-2*t+2
//theta=t^3-t^2+2*t+C
//When t=1  theta=4
C=2
//theta=t^3-t^2+2*t+2
//When t=3
theta=3*3*3-3*3+2*3+2  //radian
omega=3*3*3-2*3+2  //rad/sec
//angular acceleration alpha 
//alpha=6*t-2
//when t=3
alpha=6*3-2  //rad/sec^2
printf("\ntheta=%.3f radian\nomega=%.3f rad/sec\nalpha=%.3f rad/sec^2",theta,omega,alpha)
