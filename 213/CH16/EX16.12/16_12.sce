//To find fluctuation of energy and speed
clc
//Given:
m=500 //kg
k=0.4 //m
N=150 //rpm
//Solution:
//Refer Fig. 16.14
//Calculating the angular speed of the crank
omega=2*%pi*N/60 //rad/s
//Fluctuation of energy:
//Equating the change in torque to zero and calculating the value of theta
thetaA=asind(0), thetaC=asind(0)+180, thetaE=asind(0)+360 //degrees
thetaB=acosd(1/(2*(600/500))), thetaD=360-acosd(1/(2*(600/500))) //degrees
//Calculating the maximum fluctuation of energy
deltaE=round(integrate('(5000+600*sin(2*theta))-(5000+500*sin(theta))','theta',thetaC*%pi/180,thetaD*%pi/180)) //N-m
//Calculating the total percentage fluctuation of speed
CS=deltaE/(m*k^2*omega^2)*100 //%
//Maximum and minimum angular acceleration of the flywheel and the corresponding shaft positions:
//Calculating the maximum or minimum values of theta
//Differentiating (600*sin(2*theta))-500*sin(theta) = 0 with respect to theta and equating to zero, we get 12*2*(cosd(theta))^2-5*cosd(theta)-12 = 0
a=12*2, b=-5, c=-12
cosdtheta1=(-b+sqrt(b^2-4*a*c))/(2*a)
cosdtheta2=(-b-sqrt(b^2-4*a*c))/(2*a)
theta1=round(acosd(cosdtheta1)), theta2=acosd(cosdtheta2) //degrees
//Calculating the maximum torque
Tmax=600*sind(2*theta1)-500*sind(theta1) //N-m
//Calculating the minimum torque
Tmin=600*sind(2*theta2)-500*sind(theta2) //N-m
//Calculating the maximum acceleration
alphamax=Tmax/(m*k^2) //rad/s^2
//Calculating the minimum acceleration
alphamin=abs(Tmin)/(m*k^2) //rad/s^2
//Results:
printf("\n\n Fluctuation of energy, deltaE = %d N-m.\n\n",deltaE)
printf(" Total percentage fluctuation of speed, CS = %.1f %c.\n\n",CS,"%")
printf(" Shaft position corresponding to maximum and minimum accelerations, theta = %d degrees and %.1f degrees.\n\n",theta1,theta2)
printf(" Maximum acceleration, alphamax = %.2f rad/s^2.\n\n",alphamax)
printf(" Minimum acceleration, alphamin = %.1f rad/s^2.\n\n",alphamin)