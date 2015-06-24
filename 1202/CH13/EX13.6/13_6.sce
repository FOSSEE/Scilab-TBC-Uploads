clear
clc

//Example 13.6
disp('Example 13.6')


s = %s;
num = 1;
den = (9*s+1)*(11*s+1);
delay=0.3;
w = 0.001:0.002:5*%pi;
LF = "loglog" // Warning: Change this as necessary

Gc=20*(1+1/2.5/s+s);
G1 = num/den*Gc;
G1m = horner(G1,%i*w); //G1m denotes magnitude
G1p = phasemag(G1m)-delay*w*180/%pi; //G1p denotes phase

   xset('window',0); 
   subplot(2,1,1)
   plot2d(w,abs(G1m),logflag="ll",style = 3);
   xgrid();
   xtitle('Loglog','','Magnitude');   
   subplot(2,1,2)
   plot2d1(w,G1p,logflag="ln",style = 1);
   xgrid();
   xtitle('w(rad/sec)','','Phase(deg)');







