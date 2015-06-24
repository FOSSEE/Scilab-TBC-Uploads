clc
// compare the intensities of ordinary and extraordinary rays
//intensity of ordinary rays is given by Io=a^2 *(sin theta)^2
//where theta=30 degree
//we get Io=a^2/4
Io=1/4
//intensity of extraordinary ray is given by IE=(a*cos theta)^2
//we get IE=3*a^2/4
IE=3/4
I=IE/Io
disp("the intensities of ordinary and extraordinary rays is I="+string(I)+"unitless")
