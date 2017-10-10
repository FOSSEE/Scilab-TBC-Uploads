// Exa 3.6

clc;
clear all;

// Given data

Vinpp=500; // Peak to peak input voltage in mV
Vopp= 3; //  Peak to peak output voltage in V
Tr= 4; // Rise time in sec

// Solution

printf('Since the output has a peak amplitude greater than 1 volt, the slew rate is the limiting factor.\n ');

// The slew rate = dVo/dT;

printf('\n From the definition of rise time, it is time the output takes to change from 10 to 90 percent of the final value. \n \n Therefore,the change in the output voltage dVo in 4 microsec is equal to :');
dVo = (0.9-0.1)*Vopp;
printf(' %.1f V. \n',dVo);

SR = dVo/Tr;
printf(' The slew rate is %.1f V/μsec. \n ',SR);
printf('\n Since, the slew rate of 741 is 0.5 Vμsec, it is too slow and cannot be used.');
