clc;
clear all;
//chapter 4
//page no 120
//example 4.5
f=[500 2000 10000];    //frequency in Hz
Af=1 ./sqrt(1+(f./1000)^8);   //Linear amplitude response
AdBf=20*log10(Af);
mprintf('   f,Hz     A(f)        AdB(f)\n')
for i=1:3
    mprintf(' %5i Hz   %.5f     %.3f dB\n',f(i),Af(i),AdBf(i))
end
