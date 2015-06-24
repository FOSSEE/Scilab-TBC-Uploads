clear
clc

//Example 13.3
disp('Example 13.3')

function bodegen(num,den,w,lf,delay)
//Bode plot
//Numerator and denominator are passed as input arguments
//Both are polynomials in powers of s(say)

//This function has been modified from the original one 
//written by Prof Kannan Moudgalya, Dept of ChemE, IIT-B
G = num/den;
G1 = horner(G,%i*w);
G1p = phasemag(G1)-delay*w*180/%pi;

if LF == "normal" then 
   xset('window',0); clf();
   subplot(2,1,1)
   plot2d(w,abs(G1),logflag="nn",style = 2); 
   xtitle('Normal scale','','Magnitude'); xgrid();
   subplot(2,1,2)
   plot2d1(w,G1p,logflag="nn",style = 2);
   xgrid();
   xtitle('w(rad/sec)','','Phase(deg)');
elseif LF == "semilog" then 
   xset('window',1); clf();
   subplot(2,1,1)
   plot2d(w,20*log10(abs(G1)),logflag="ln",style = 2);
   xgrid(); 
   xtitle('Semilog','','Magnitude (dB)');
   subplot(2,1,2)
   plot2d1(w,G1p,logflag="ln",style = 2);
   xgrid();
   xtitle('w(rad/sec)','','Phase(deg)');
elseif LF == "loglog" then 
   xset('window',2); clf();
   subplot(2,1,1)
   plot2d(w,abs(G1),logflag="ll",style = 2); 
   xgrid();
   xtitle('Loglog','','Magnitude');
   subplot(2,1,2)
   plot2d1(w,G1p,logflag="ln",style = 2,rect=[0.01,-270,100,0]);//note the usage of rect for this particular example
   xgrid();
   xtitle('w(rad/sec)','','Phase(deg)');
end
endfunction;


s = %s;
num = 5*(0.5*s+1);
den = (20*s+1)*(4*s+1);
theta=1;

w = 0.001:0.002:10*%pi;
LF = "loglog" // Warning: Change this as necessary

bodegen(num,den,w,LF,theta);

//Checking using iodelay toolbox in scilab
//G=syslin('c',num/den);
//G=iodelay(G,1)
//bode(G,0.01,0.1)

