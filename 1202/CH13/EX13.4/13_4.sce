clear
clc

//Example 13.4
disp('Example 13.4')


s = %s;
num = 2;
den = (0.5*s+1)^3;
delay=0;
w = 0.001:0.002:100*%pi;
LF = "loglog" // Warning: Change this as necessary



//Kc=1
G1 = num/den;
G1m = horner(G1,%i*w); //G1m denotes magnitude
G1p = phasemag(G1m)-delay*w*180/%pi; //G1p denotes phase

//Kc=4
G2 = 4*num/den;
G2m = horner(G2,%i*w);
G2p = phasemag(G2m)-delay*w*180/%pi;

//Kc=20
G3 = 20*num/den;
G3m = horner(G3,%i*w);
G3p = phasemag(G3m)-delay*w*180/%pi;

   xset('window',0); 
   subplot(2,1,1)
   plot2d(w,abs(G3m),logflag="ll",style = 4);
   plot2d(w,abs(G2m),logflag="ll",style = 3);
   plot2d(w,abs(G1m),logflag="ll",style = 2); 
        
   xgrid();
   xtitle('Loglog','','Magnitude');   
   legend("Kc=20","Kc=4","Kc=1")
   subplot(2,1,2)
   plot2d1(w,G1p,logflag="ln",style = 2);
   xgrid();
   xtitle('w(rad/sec)','','Phase(deg)');





