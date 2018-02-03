//Car and truck
//refer fig.12.14 and 12.15
u=12.5  //m/sec
//sT=10+12.5*t+(aT*t^2)/2
aT=-2  //m/sec^2
//t is the time at any instant after the brakes are applied
//sT=10+12.5*t-t^2
//distance moved by car
//sC=u*2+u*(t-2)+(aC*(t-2)^2)/2
//sT=sC
//Apply equations of motion 
//we get quadratic equation whose solution gives
aC=-10/3  //m/sec^2
printf("the deceleration of the car is=%.2f m/sec^2",aC)
