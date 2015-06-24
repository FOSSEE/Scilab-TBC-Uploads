  
//Caption:Progam to determine the probability of maximum interference of a 64 channel CDMA system
 
//Example 9.1
 
//Page 447
 
disp('The probability of 63 destructive interferers is merely the probability of occurence of 63 equally likely binary events,')
 
Pmax=(0.5)^63//maximum probability

disp('The value of a desired receive signal is the autocorrelation of a codeword with itself and can therefore be represented as a value of 64. ')

disp('The mean and varience of a sum of 63 such variable are 0 and 63, respectively. The signal-to-interference ratio is now determined as,')

a=[(64^2)/63]

SIR=10*log10(a)

//Result
 
//Signal to interference ratio = 18.1 dB
 