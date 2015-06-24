clc;funcprot(0);//EXAMPLE 5.2
// Initialisation of Variables
dp=22;............//Delay period in degree
cp=17;...............//Combustion period in degree
dper=14;...............//Delay Percentage
//Calculations
thetad=dp/2;.........//Full throttle half speed will result in delay angle being reduced for the same time
//Thus ignition timing should be arranged so that the total of thetad+cp ends 13 degree after TDC
tsp=(thetad+cp)-13;............//Time of spark in degree
disp(tsp,"The time of spark (in Degrees before TDC)")
//Half throttle half speed will result in an increase of 14% in delay time over that at full throttle half speed 
theta=(dper*thetad)/100;
dtheta=thetad+theta;............//Delay angle
tp=dtheta+cp;................//Total period
tsp=tp-13;..............//
disp(tsp,"Time of spark (in degrees before TDC)")

