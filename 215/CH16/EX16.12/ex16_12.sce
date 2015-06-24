clc
//Example 16.12
disp('Given')
disp('Bandwidth = 1M Hz and high frequency cutoff = 1.1M Hz')
B=10^6;fH=1.1*10^6
//B=fH-fL
fL=fH-B
printf("Low frequency cutoff fL= %d kHz \n",fL*10^-3);
wL=2*%pi*fL
printf("wL= %3.2f krad/s \n",wL*10^-3);
wH=2*%pi*fH
printf("wH= %3.3f Mrad/s \n",wH*10^-6);
//Now we need to find values for R,L and C
//Let X=1/LC
B=2*%pi*(fH-fL)
X=(wH-B/2)^2-(B^2/4)
disp(X)
disp('Let L=1H')
L=1;
C=1/(L*X)
disp(C,'C=')
//B=R/L
R=L*B
printf("R= %3.3f Mohm \n",R*10^-6);


