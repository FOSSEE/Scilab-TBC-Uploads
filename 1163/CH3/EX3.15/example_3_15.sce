clear;
clc;
disp("--------------Example 3.15---------------")
printf("Another example of a nonperiodic composite signal is the signal received by an old-fashioned analog black-and-white TV.\n");
s=30; // screen is scanned 30 times per second
//screen resolution = 525 x 700
vl=525; 
hl=700;
pixels=vl*hl; // total number of pixels
pixels_per_second=pixels*s; // pixels scanned per second 
cycles_per_second=pixels_per_second/2; // 2 pixels per cycle in the worst-case scenario i.e alternating black and white pixels
bandwidth = cycles_per_second*10^-6;
b7=bandwidth*0.7; // 70% of the bandwidth 
final =ceil(b7); // final rounded bandwidth
// display the result
printf("The bandwidth needed in the worst-case scenario i.e alternating black and white pixels where we need to represent \none color by the minimum amplitude and the other color by the maximum amplitude is %5.4f MHz.\n\n",bandwidth);
printf("This worst-case scenario has such a low probability of occurrence that the assumption is that we need only 70 percent\nof this bandwidth, which is %3.2f MHz. Since audio and synchronization signals are also needed, a %d MHz bandwidth\nhas been set aside for each black and white TV channel.\nAn analog color TV channel has a 6-MHz bandwidth.",b7,final);

