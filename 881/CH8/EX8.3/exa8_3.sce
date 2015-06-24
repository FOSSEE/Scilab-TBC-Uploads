clc;
//Example 8.3
//Page No 309



//Solution

SN=29; //dB
NF=4; //dB
FMi=16; //dB

disp("The predetection signal to noise ratio is ");

pre=SN-NF;

disp('dB',pre,"S/N(pre) = ");

disp("The postdetection signal to noise ratio is ");

pst=pre+FMi;

disp('dB',pst,"S/N(post) = ");

