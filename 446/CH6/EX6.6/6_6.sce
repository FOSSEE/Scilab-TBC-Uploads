clear    
clc
disp('Exa-6.6');
Rinfi=1.097*10^7;  //known value 
n1=3;n2=2;       //first 2 given states
w=(n1^2*n2^2)/((n1^2-n2^2)*Rinfi);printf('Wavelength of trnasition from n1=3 to n2=2 is %.3f nm\n',w*10^9);
n1=4;n2=2;      //second 2 given states  
w=(n1^2*n2^2)/((n1^2-n2^2)*Rinfi);printf('Wavelength of trnasition from n1=3 to n2=2 is %.3f nm',w*10^9);