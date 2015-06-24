//CHAPTER 4_ Motion and Dimensional Measurement
//Caption : Accelerometer
// Example 11// Page 240
disp("fn=20000")
disp("tou=0.6")
disp("f=10000 ")
fn=20000  //('enter the natural frequency of the accelerometer =:')
tou=0.6  //('enter the daping ratio of the accelerometer=:')
f=10000   //('enter the frequency at which transfer function is to be calculated=:')
r=f/fn;
H_mag=1/sqrt((1-r^2)^2+(2*tou*r)^2);
H_phase=atan((2*tou*r)/(1-r^2))*360/(2*%pi);
printf(' The magnitude is %fd and phase is %fd deg\n',H_mag,H_phase)
error=(H_mag-1)*100/1;
printf(' Error at %fd Hz is %d percent\n',f,error)
