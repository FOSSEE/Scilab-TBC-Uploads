clear;
clc;
disp("--------------Example 5.5---------------")
B=100 ; //bandwidth = 100 kHz
two_df=50; // 2df = 50 kHz
fl=200; // lower frequency in kHz
fh=300; // higher frequency in kHz
mid_bandwidth = (fl+fh)/2; // mid frequency of bandwidth in kHz
Fc=mid_bandwidth;
d=1;
S=(B-two_df)/(1+d); // B= (1+d)*s + 2df
N=S; // bit rate
printf("\nThe carrier frequency is %d kHz , the signal rate is %d kbaud and the bit rate %d kbps.",Fc,S,N); // display result
