// Exa 21.5
// To determine the coded symbol transmission rate per subcarrier and bit transmission rate per subcarrier for each of the two modes.

clc;
clear all;

R=3/4;//code rate of convolution encoder
M1=9; //payload transmission rate in Mbps for mode 1
M2=36; //payload transmission rate in Mbps for mode 2

//solution
D1=M1*10^6/48;//user data  rate in kbps for mode 1 
D2=M2*10^6/48;//user data rate in kbps for mode 2 
//Refering to Table 21.11
printf('Data transmission rate per carrier with 3/4 convolution encoder are %.1f Kbps and %d Kbps \n',D1/10^3,D2/10^3);
C1=D1/R;
C2=D2/R;
printf(' Carrier transmission rate with R=3/4 convolutional encoder are %d Kbps and %d Kbps\n',C1/10^3,C2/10^3);
printf(' Carrier symbol rate with R=3/4 convolutional encoder are %d ksps and %d Ksps \n',C1/10^3,C2/4/10^3);  //Mode1 as BPSK and MOde2 as 16-QAM
