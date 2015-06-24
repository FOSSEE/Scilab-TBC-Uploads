 
//Caption:Program to determine the amount of transmission capacity 
 
//(a)Assume the link-by-link error control (b) Assume end-to-end error control (c)Repeat the calculation for a bit error probability of 10^-5
 
//Example 10.1
 
//Page 472
 
//(a)With link-by-link 
 
frame=1000*10^-8

disp('The expected number of bits of transmission capacity required to retransmit is')

frame*1000

//(b)With end-to-end
 
frames=10*10^-5//corrupted frame

disp('The expected number of bits of transmission capacity required is')

frames*1000 
 
//(c)With bit error 10^-5
 
ans1=1000*10^-5 
 
ans1=1000*10^-5*1000

ans=10*10^-2*1000
 
//Result
 
//(a)0.01 bit/link
 
//(b)0.1 bit/link
 
//(c)1. 10 bits/link
 
//(c)2. 100 bits/link
