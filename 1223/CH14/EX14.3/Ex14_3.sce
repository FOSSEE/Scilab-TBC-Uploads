clear;
clc;
//Example 14.3
Aol=10^5;
Ri=10;
R1=10;
R2=R1;
Rif=(Ri*(1+Aol)+R2*(1+Ri/R1))/(1+R2/R1);
Rif=Rif*0.001;//Mohm
printf('\ninput resistance =%.fMOhm\n',Rif)
