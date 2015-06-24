clc;
//page 247
//problem 5.2

//Highest frequency(fH) = 10000/2 = 5000 Hz 
fH = 5000

//Lowest frequency(fL) = 6000/2 = 3000 Hz
fL = 3000

//Minimum sampling frequency from low pass consideration(S_LOW) = 2*fH
S_LOW = 2*fH

disp('Minimum sampling frequency from low pass consideration is '+string(S_LOW)+' Hz')

//B = fH-fL = 2000 Hz
B = fH-fL

//k = floor(fH/B) = 2, where floor(x) gives the largest integer that does not exceed x
k = floor(fH/B)

//The required sampling frequency from band pass consideration(S_BAND) = 2*fH/k
S_BAND = 2*fH/k

disp('Minimum sampling frequency from band pass consideration is '+string(S_BAND)+' Hz')
