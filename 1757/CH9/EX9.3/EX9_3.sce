//Example9.3   // to determine the lock range of PLL
clc;
clear;
close;
Ko = 25 ; // KHz
fo = 50 ; // KHz
A = 2 ;
Vd = 0.7 ;
AL = 1 ;

// the amximum output swing of phase detector 
// Vd = Kd*(%pi/2) ;

// the sensitivity of phase detector Kd is
Kd = Vd*(2/%pi) ;
disp('The sensitivity of phase detector Kd is = '+string(Kd)+''); 

// The maximum control voltage of VCO Vfmax
Vfmax = (%pi/2)*Kd*A ;
disp('The maximum control voltage of VCO Vfmax = '+string(Vfmax)+' V'); 

// the maximum frequency swing of VCO
fL = (Ko*Vfmax);
disp('The maximum frequency swing of VCO = '+string(fL)+' KHz'); 

// The maximum range of frequency which lock a PLL are
fi = fo-fL ;
disp('The maximum range of frequency which lock a PLL is = '+string(fi)+ ' KHz ');

fi = fo+fL ;
disp('The maximum range of frequency which lock a PLL is = '+string(fi)+ ' KHz ');

disp('The maximum and minimum rage between 15 KHz to 85 KHZ ')


// the lock range is
fLock = 2*fL ;
disp('The lock range is = '+string(fLock)+ ' KHz ');
