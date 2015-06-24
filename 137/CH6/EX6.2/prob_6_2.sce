clc;
// page no 271
// prob no. 6.2
fm=input("Enter the band limited freq in hertz = ");
Rn=2*fm; // Nyquist sampling rate
Ra=Rn*(4/3);// actual Nyquist sampling rate
// here the maximum quantization error(E) is 0.5% of the peak amplitide mp. Hence, E=mp/L=0.5*mp/100*L
mp=1;//we assume peak amplitude is unity
L=(mp*100)/(0.5*mp);
for (i=0:10)
  j=2^i;
  if(j>=L)
    L1=j;
    break;
    end
end
n=log2(L1);// bits per sample
c=n*Ra;// total no of bits transmitted
// Beause we can transmit up to 2bits/per hertz of bandwidth,we require minimum transmission bandwidth Bt=c/2
Bt=c/2;
disp(+'Hz',Bt,"minimum transmission bandwidth in hertz = ");
s=input("enter the no of signal to be multiplexed = ");
Cm=s*c;//total no of bits of 's' signal
c1=Cm/2;// minimum transmission bandwidth
disp(+'Hz',c1,"minimum transmission bandwidth in hertz = ")