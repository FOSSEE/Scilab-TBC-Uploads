//CHAPTER 4_ Motion and Dimensional Measurement
//Caption : Seismic pickup
// Example 10// Page 238
disp("r1=0.2;")
disp("r2=0.6 ")
disp("tou=0.05")
r1=0.2; 
r2=0.6  // given
tou=0.05;   //given
wn=1600  //(' enter the natural frequency=:')
disp("H1=1/sqrt((1-r1^2)^2+(2*tou*r1)^2)")
H1=1/sqrt((1-r1^2)^2+(2*tou*r1)^2);
H1_phase=-atan((2*tou*r1)/(1-r1^2))*360/(2*%pi);
disp("H1_phase=-atan((2*tou*r1)/(1-r1^2))*360/(2*%pi)")
H2=1/sqrt((1-r2^2)^2+(2*tou*r2)^2);
H2_phase=-atan((2*tou*r2)/(1-r2^2))*360/(2*%pi);
//In order to obtain the amplitude of relative displacement, transfer function must be multiplied by amplitude of the input signal and the static sensitivty of the pickup (1/wn^2) for each frequency
//amp1=H1/wn^2;
//amp2=H2/wn^2;
tou2=0.6;  // given
H11=1/sqrt((1-r1^2)^2+(2*tou2*r1)^2);
H11_phase=-atan((2*tou2*r1)/(1-r1^2))*360/(2*%pi);
H22=1/sqrt((1-r2^2)^2+(2*tou2*r2)^2);
H22_phase=-atan((2*tou2*r2)/(1-r2^2))*360/(2*%pi);
//amp11=H11/wn^2;
//amp22=H22/wn^2;
printf('the magnitude of the transfer function will be %fd and %fd while the phases will shift by %fd and %fd for tou=0.05\n',H1,H2,H1_phase,H2_phase)
printf('the magnitude of the transfer function will be %fd and %fd while the phases will shift by %fd and %fd for tou=0.6\n',H11,H22,H11_phase,H22_phase)



