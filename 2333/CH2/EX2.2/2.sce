clc
// Given that
I1 = 1 // let intensity of one source is unity
I2 = 100*I1 // Intensity of second source
a1 = 1 // let amplitude of first source is unity
// Problem 2 on page No. 83
printf("\n # Problem 2 # \n")
amp_ratio = sqrt(I2/I1) // Amplitude ratio of sources 
a2 = a1*amp_ratio // Amplitude of second source
I_max = (a1+a2)^2 // Maximum Intensity
I_min = (a2-a1)^2 // Minimum Intensity 
I_ratio = I_max/I_min // Ratio of maximum to minimum intensity
printf("\n Ratio of intensities is %d : %d",I_max,I_min)

