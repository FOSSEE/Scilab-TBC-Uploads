//CHAPTER 2- STEADY-STATE ANALYSIS OF SINGLE-PHASE A.C. CIRCUIT
//Example 42 // read it as example 41 in the book on page 2.100

disp("CHAPTER 2");
disp("EXAMPLE 42");

//VARIABLE INITIALIZATION 
I=10;                                // max amplitude of wave in Amp
rms1=5;
rms2=7.5;
rms3=10;
phi1=30;
phi2=-60;
phi3=45;
f=50;                               //Hz
w=2*%pi*f;
//
//SOLUTION
av1=rms1/1.11;
av2=rms2/1.11;
av3=rms3/1.11;
disp("SOLUTION (i)");
disp(sprintf("The  average value of 1st current is %f Amp", av1));
disp(sprintf("The  average value of 2nd current is %f Amp", av2));
disp(sprintf("The  average value of 3rd current is %f Amp", av3));
//
disp("SOLUTION (ii)");
disp(sprintf("The  instantaneous  value of 1st current is %f sin(%f*t+%f) Amp", rms1*sqrt(2), w,phi1));
disp(sprintf("The  instantaneous  value of 2nd current is %f sin(%f*t%f) Amp", rms2*sqrt(2), w,phi2));
disp(sprintf("The  instantaneous  value of 3rd current is %f sin(%f*t+%f) Amp", rms3*sqrt(2), w,phi3));
//
//instantaneous values of current at t=100msec=0.1 sec
t=0.1;
i1=(rms1*sqrt(2))*(sin(w*t+phi1*%pi/180));
i2=(rms2*sqrt(2))*(sin(w*t+phi2*%pi/180));
i3=(rms3*sqrt(2))*(sin(w*t+phi3*%pi/180));
disp("SOLUTION (iv)");
disp(sprintf("The  instantaneous value of 1st current is %f Amp at %f Sec", i1, t));
disp(sprintf("The  instantaneous value of 2nd current is %f Amp at %f Sec", i2, t));
disp(sprintf("The  instantaneous value of 3rd current is %f Amp at %f Sec", i3, t));
disp(" "); 
// 
//END

