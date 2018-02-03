//Fly-wheel
//theta=200*%pi  //radian
omega0=(120*2*%pi)/(60)  //rad/sec
omega=(160*2*%pi)/(60)  //rad/sec
//Using kinematic relation
alpha=0.0977  //rad/sec^2
//Also
t=(16.755-4*%pi)/0.0977  //sec
//theta' be the total angular displacement in reaching the velocity of 160 rpm
theta=(1436.1)/(2*%pi)  //revolution
printf("\nt=%.3f sec\ntheta=%.3f revolution",t,theta)

