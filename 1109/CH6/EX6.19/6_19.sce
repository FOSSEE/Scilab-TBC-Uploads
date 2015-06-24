clear;
clc;
f=150;S=4.48;Ymin=6*(10^-2);
lo=300/(f); //lo=wavelength
b=(2*%pi)/lo;
phi=round(((2*b*Ymin)-%pi)*100)/100;
phi1=-phi;
ampK=round(((S-1)/(S+1))*10)/10;
Ls=(lo/(4*%pi))*(phi1+%pi-round(acos(ampK)));
printf("Point of attachment = %f cm\n",round(Ls*(10^4))/100);
Lt=(lo/(2*%pi))*(atan(sqrt(1+(ampK*ampK)))/(2*ampK));
printf("Length of the stub = %f cm",round(Lt*(10^4))/100);
//the difference in result  is due to erroneous value in textbook.
disp("The difference in result is due to erroneous value in textbook")
