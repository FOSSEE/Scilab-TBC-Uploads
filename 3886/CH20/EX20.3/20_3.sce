//Wheel rotating about fixed axis
//Initial velocity
omega0=2.0944  //rad/sec
t=70  //sec
//Angular displacement
theta=100*%pi  //radian
//Using kinematic equation
alpha=0.06839  //rad/sec^2
//Angular velocity at the end of 70 seconds interval
omega=2.0944+0.06839*70  //rad/sec
//Let the time required for the velocity to reach 100 rpm be t
t=(((200*%pi)/(60))-(2.0944))*((1)/(0.06839))  //sec
printf("\nomega=%.3f rad/sec\nt=%.3f sec",omega,t)

