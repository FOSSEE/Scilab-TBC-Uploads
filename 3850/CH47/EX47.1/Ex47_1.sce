
//To Calculate the time for which the Person slept according to clocks

//Example 47.1

clear;

clc;

delt=6;//Duration of Sleep according to person's watch

v=3*10^7;//Speed of the train(in which the person is sitting) in m/s

c=3*10^8;//Speed of light in m/s

delt1=delt/sqrt(1-(v/c)^2);//Duration of sleep in the ground frame

delt1h=int(delt/sqrt(1-(v/c)^2));//Duration of sleep (in whole number of hours) in the ground frame

printf("Duration of sleep according to the clocks = %.0f hours ",delt1h);

delt1m=(delt1-delt1h)*60;//Duration of sleep (in remaining ) in the ground frame

printf("%.1f minutes",delt1m);
