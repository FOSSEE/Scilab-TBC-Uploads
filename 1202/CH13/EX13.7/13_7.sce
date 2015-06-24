clear
clc

//Example 13.7
disp('Example 13.7')


s = %s;
num = 4;
den = (5*s+1);
delay=1;
w = 0.001:0.002:10*%pi;
LF = "loglog" // Warning: Change this as necessary

Gv=2;Gm=0.25;Gc=1;
G1 = num/den*Gc*Gm*Gv;
G1m = horner(G1,%i*w); //G1m denotes magnitude
G1p = phasemag(G1m)-delay*w*180/%pi; //G1p denotes phase

   xset('window',0); 
   subplot(2,1,1)
   plot2d(w,abs(G1m),logflag="ll",style = 3,rect=[0.01,0.1,100,10]);
   xgrid();
   xtitle('Loglog','','Magnitude');   
   subplot(2,1,2)
   plot2d1(w,G1p,logflag="ln",style = 1,rect=[0.01,-400,100,100]);
   xgrid();
   xtitle('w(rad/sec)','','Phase(deg)');
   
//Example ends
   
//*********************************************************************************//
//In the SECOND EDITION of the book, this example also asks for drawing Nyquist plot
//In case you want to learn how to do it, Uncomment the code below
  
////Please install IODELAY toolbox from Modeling and Control tools in ATOMS
////http://atoms.scilab.org/toolboxes/iodelay/0.4.5
////There is no inbuilt toolbox in scilab for introducing time delays other than
////above mentioned. The output of iodelay toolbox however does not work
////with csim and syslin commands
////The output of iodelay however can be used for frequency related analyses
////like bode and nyquist

//xset('window',1);
//G=syslin('c',G1);
//G=iodelay(G,delay);
//nyquist(G,%f);  //%f => asymmetric, see help nyquist
////*********************************************************************************//











