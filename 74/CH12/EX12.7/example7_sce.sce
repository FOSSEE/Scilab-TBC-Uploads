//chapter 12.7
// example 12.7
//page 425
n=8;//8 bit ADC
Vi=5.1;// when all output is 1
Res1=2^n;
Res2=Vi/(2^n-1);//resolution 
disp(Res1,Res2)
vi=1.28;
D=vi/Res2;
disp(D)// digital output
B=(01000000)// binary equivalent of 64