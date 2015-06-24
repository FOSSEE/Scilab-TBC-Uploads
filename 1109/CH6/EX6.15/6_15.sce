clear;
clc;
Zo=400;ZR=200-(%i*100);lo=3; //lo=wavelength
//value os Zo as taken in solution
K=(ZR-Zo)/(ZR+Zo);
ampK=abs(K);
phi=%pi + atan(imag(K)/real(K));
Ls=(lo/(4*%pi))*(phi+%pi-acos(ampK));
printf("Shortest distance from the lead to the stub location = %f metres\n",round(Ls*100)/100);
Lt=(lo/(2*%pi))*(atan(sqrt(1-(ampK*ampK)))/(2*ampK));
printf("Length of the short circuited stub = %f metres",fix(Lt*10)/10);
