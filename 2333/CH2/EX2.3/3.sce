clc
// Given that
I_avg = 100 // let it is average intensity 
var = 5 // Intensity variation in percentage
a2 = 1 // let amplitude of one source is unity
// Problem 3 on page No. 83
printf("\n # Problem 3 # \n")
I_max = I_avg+var// maximum intensity
I_min = I_avg - var // minimum intensity
I_ratio = I_max/I_min // Ratio of maximum to minimum intensity
amp_ratio = (1+sqrt(I_max/I_min))/(sqrt(I_max/I_min)-1) // Amplitude ratio of sources 
a1 = a2*amp_ratio // Amplitude of second source
i_ratio = (a1/a2)^2 // Intensity ratio of two sources
printf("\n Ratio of intensities of sources is %d:1",ceil(i_ratio/100)*100)
