//Flywheel
//alpha=12-t
//omega=12*t-(t^2)/2+C
//When t=4 sec  omega=60 rad/sec
C1=20
//When t=6 sec
omega=12*6-((6*6)/(2))+20  //rad/sec
//theta=6*t^2-(t^3)/6+20*t+C2
//When t=0  theta0=C2
//When t=6 sec theta6=180+C2
//Angular displacement during 6 seconds=180 rad
//Number of revolution
N=180/(2*%pi) 
printf("\nomega=%.3f rad/sec\nNumber of revolution=%.3f ",omega,N)
