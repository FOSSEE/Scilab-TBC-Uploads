// Exa 8.1
// To calculate coverage gain in dB.

clc;
clear all;

Pdiff=-3;  //in dB
AMR1=12.2; //in kbps
AMR2=7.95;  //in kbps
AMR3=4.75;  //in kbps

//solution
//CG(dB)=10log{(DPDCH(kbps)+DPCCH)/(DPDCH(AMR bit rate (kbps))+ DPCCH)}
CG1=10*log10((AMR1+AMR1*10^(Pdiff/10))/(AMR2+AMR1*10^(Pdiff/10)));
CG2=10*log10((AMR1+AMR1*10^(Pdiff/10))/(AMR3+AMR1*10^(Pdiff/10)));
printf('By reducing the AMR bit rate from 12.2 to 7.95 kbps coverage gain becomes %.2f dB \n ',CG1);
printf('By reducing the AMR bit rate from 7.95 to 4.75 kbps coverage gain becomes %.2f dB \n ',CG2);
