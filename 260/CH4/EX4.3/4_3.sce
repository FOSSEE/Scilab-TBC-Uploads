//Eg-4.3
//pg-145

clear
clc

 
 A=[-3 0 1];
 [r,c] = size(A);
 n = r;
 
 xl=1;
 xu=3;
 fx=poly(A,'x','c')
 
 // using formula |xnew^n-alpha|<=xhigh-xlow/2^n
 
 xhigh=3;
 xlow=1;
 
 t = 1+ (6*2.303/log(2));
 disp(t)
 printf('Analytically 2^(1-n)<10^(-6), solving that implies n > %f\n so n = %d',t,t+1)
 
 