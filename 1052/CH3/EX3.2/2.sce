clc;
//Example 3.2
//Page no. 25
printf("Example 3.2 Page no. 25\n\n")
//given temperature(T),pressure(P),capilLary tube diameter(D),water density(rho),contact angle(ththetaeta)
sigma=0.0712//surface tension (sigma)of water at 30 degree C temperature in appendix A.4
D=0.008
R=D/2
theta=0
g=9.807
rho=1000
printf("surface tension=%fN/m\n Radius=%fm\n theta=%fdegree\n g=%fm/s^2\n rho=%fkg/m^3\n",sigma,R,theta,g,rho)
h=(2*sigma*cos(0))/(rho*g*R)//height rise of the liquid
printf("height of liquid rise =%fm\n",h)
