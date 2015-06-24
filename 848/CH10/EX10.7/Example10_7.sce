//clear//
//Caption: Program to find Excess loss, Splitting loss and total loss
//Example10.7
//page 355
clear;
clc;
close;
Power_Lost = 5/100;
FT = 1-Power_Lost; //power coupled
N = 32;
Excess_Loss = -10*log10(FT^log2(N));
Splitting_Loss = -10*log10(1/N);
Total_Loss = Excess_Loss+Splitting_Loss;
disp(Excess_Loss,'Excess Loss in dB')
disp(Splitting_Loss,'Splitting Loss in dB')
disp(Total_Loss,'Total Loss experienced in Star Couplers in dB')
//Result
// Excess Loss   
//     1.1138197  
// Splitting Loss   
//     15.0515  
// Total Loss experienced in Star Couplers   
//    16.16532  
