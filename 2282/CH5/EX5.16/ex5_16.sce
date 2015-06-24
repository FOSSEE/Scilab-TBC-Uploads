//Example 5.16, page no-209
clear
clc

bw=3.2          // voice channel band limited frequency in kHz
r=1.2           //1.2 times the Nyquist rate
n=24            //no of  voice channel
b=8             // 8-bit PCM
sr=2*bw*r
p=10^6/(sr*10^3)
N=(n*b)+1
bit_d=p/N
bit_d=ceil(bit_d*1000)/1000
tr=1/bit_d

printf("Number of bits in each frame = %.0f \n Bit duration = %.3f micro second \n Transmission rate = %.3f Mbps",N,bit_d,ceil(tr*1000)/1000)
