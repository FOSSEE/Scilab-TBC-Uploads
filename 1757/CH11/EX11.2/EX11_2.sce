//Example11.2  // determine the output voltage of D/A converter for the binary inputs a) 10101010  b) 11001100  c) 11101110 d) 00010001  
clc;
clear;
close;
del = 12*10^-3 ;  // mA

// the input voltage of D/A converter 
 //Vo = del*binary input (BI)

// For BI 10101010 the output
BI = '10101010' ;
BI = bin2dec(BI);
Vo = del*BI ;
disp('For BI 10101010 the output of D/A converter is = ' +string(Vo)+ ' V ');

// For BI 11001100 the output
BI = '11001100' ;
BI = bin2dec(BI);
Vo = del*BI ;
disp('For BI 11001100 the output of D/A converter is = ' +string(Vo)+ ' V ');

// For BI 11101110 the output
BI = '11101110' ;
BI = bin2dec(BI);
Vo = del*BI ;
disp('For BI 11101110 the output of D/A converter is = ' +string(Vo)+ ' V ');

// For BI 00010001 the output
BI = '00010001' ;
BI = bin2dec(BI);
Vo = del*BI ;
disp('For BI 00010001 the output of D/A converter is = ' +string(Vo)+ ' V ');
