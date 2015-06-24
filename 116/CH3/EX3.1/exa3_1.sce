//Caption:Program to calculate quantization interval and bits needed to encode each sample
 
//Example 3.1
 
//Page 101
 
sqr=30//SQR=30dB
 
q=1*10^[-(sqr-7.78)/20] 
 
disp('Thus 13 quantization intervals arer needed for each polarity for a total of 26 intervals in all. The number of bitz required are determined as')
 
N=log2(26)
 
//Result
 
//q = 0.078 V

//N = 4.7 = 5 bits per sample 