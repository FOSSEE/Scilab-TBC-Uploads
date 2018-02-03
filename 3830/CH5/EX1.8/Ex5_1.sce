// Exa 5.1

clc;
clear;

// Given

E1 = 1/100; // exposure set for grid line impression(sec)
E2 = 10; // second exposure duration(sec)
R = 10^-4; // persistence of CRO screen(sec)
I1 = 1; // Trace intensity for exposure 1(candle power)
I2_normal = 4 ; // trace intensity for normal settings(candle power)

// Solution

printf(' The emission of light that would be received by photographic paper in both exposures must be the same \n  Also, the product of time and light is to be the same. \n');
I_req = I1*E1/R;
printf('  Hence, the image intensity required = %d \n' ,I_req );
I_boost = I_req/I2_normal;
printf('  Therefore, the intensity boost required = %d times \n' , I_boost);

printf('  The light emitted is proportional to the kinetic energy of the electron while it strikes the screen, which is equal to sqrt(V) , where V is the velocity while striking \n');
 printf('  Therefore, the accelerating voltage of the accelerating anode should br increased by %d times \n',sqrt(I_boost));
