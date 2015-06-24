clc;
//page 199
//problem 4.2

//Given angle modulated signal is x = 3*cos[2*pi*(10^6)*t+2*sin(2*pi*10^3*t)]

//So, phase of the angle modulates signal is Q = 2*pi*(10^6*t)+2*sin(2*pi*(10^3)*t)

//Instantaneous frequency = dQ/dt = 2*pi*(10^6)+ 4*pi*(10^3)*sin(2*pi*(10^3)*t)

//For Instantaneous frequency at 0.25ms, Substituting t = 0.25ms in Instantaneous frequency
//Instantaneous frequency is expressed as f1_rad for frequency in radians per second
f1_rad = 2*%pi*(10^6)+ 4*%pi*(10^3)*sin(2*%pi*(10^3)*0.00025)

//Instantaneous frequency is expressed as f1_hz for frequency in hertz
f1_hz = f1_rad/(2*%pi)

disp('the Instantaneous frequency at time t=0.25ms is '+string(f1_rad)+' rad/sec = '+string(f1_hz)+' Hz')

//For Instantaneous frequency at 0.25ms, Substituting t = 0.5ms in Instantaneous frequency 
//Instantaneous frequency is expressed as f2rad for frequency in radians per second
f2_rad = 2*%pi*(10^6)+ 4*%pi*(10^3)*sin(2*%pi*(10^3)*0.0005)

//Instantaneous frequency is expressed as f2hz for frequency in hertz
f2_hz = f2_rad/(2*%pi)

disp('the Instantaneous frequency at time t=0.5ms is '+string(f2_rad)+' rad/sec = '+string(f2_hz)+' Hz')

//Maximum phase deviation = max[2*sin(2*pi*(10^3)*t)] = 2*1
maxDp = 2;

disp('Maximum phase deviation is '+string(maxDp)+' rad')

//Maximum frequency deviation = max[4*pi*(10^3)*sin(2*pi*(10^3)*t)] = 4*pi*(10^3)*1
maxDf = 4*%pi*(10^3)*1;

disp('Maximum frequency deviation is '+string(maxDf)+' Hz')
//disp('in rad',maxDf,'Maximum frequency deviation is')

//In the textbook the calculated value of max frequency devaition is = 2000 Hz, in reality the value = 12566.371 Hz   
