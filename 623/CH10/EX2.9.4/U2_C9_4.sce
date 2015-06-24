//variable initialization
r=0:.01:9999;
theta=0:.01:%pi;
phi=0:.01:2*%pi;

//calculation
I1=integrate('r^4*exp(-r)','r',0,9999);
I2=integrate('sin(theta)*(cos(theta))^2','theta',0,%pi);
I3=integrate('1','phi',0,2*%pi);
A=sqrt(1/(2*%pi*I1*I2*I3));

printf("\n A = %f*a0^(-5/2)",A);
