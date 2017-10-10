// Exa 2.8

clc;
clear;

// Given data

// With reference to differential amplifier designed in example 2.6
// 2 applied inputs are
t = [0 :1:100]; // time in mSec
 v1=  15*sin(2*%pi*60*t) + 5*sin(2*%pi*1000*t); // in mV
 v2 = 15*sin(2*%pi*60*t) - 5*sin(2*%pi*1000*t); // in mV
fi = 60; // frequency of interference signal(Hz)
fo = 1000; // frequency at which signal is to be processed(Hz)

// Solution

// We know from Example 2.6
gm=4; // mʊ
Rc=125 ; // kΩ
Re= 1.25; // kΩ
Bo=200;
r_pi= Bo/gm;  // in kΩ

ADM=-500; // from example 2.6(given)
// From eq. 2.53(a) we get ACM as
ACM = (-Bo*Rc)/(r_pi*1000+2*(1+Bo)*Re);
printf(' The value of ACM = %.2f \n',ACM);
// from eqns 2.56(a and b)
vDM = (v1-v2)/2;
vCM = (v1+v2)/2;

//from Eq. 2.57(a and b)
vo1 = ADM*vDM+ACM*vCM;
vo2 = -ADM*vDM + ACM*vCM;

printf('  Therefore final equations are- \n');
disp("vo1 = -2500*sin(2*%pi*1000*t)-0.75*sin(2*%pi*60*t) mV ");
disp("vo2 = 2500*sin(2*%pi*1000*t)-0.75*sin(2*%pi*60*t) mV");
