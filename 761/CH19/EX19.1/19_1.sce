clc;
// page no 703
// prob no 19.1
// In the given problem,a video signal has 50% of the maximum luminance level
//A black setup level of  7.5 IRE represents zero luminance,and 100 IRE is max brightness.Therefore the range from min to max luminnance has 100-7.5=92.5 units.
//Therefore the level is
IRE=7.5 + (0.5*92.5);
disp('IRE units',IRE,'Level of video signals in IRE units');