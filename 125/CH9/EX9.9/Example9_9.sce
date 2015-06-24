//Caption: Program performs Block Truncation Coding(BTC) 
//Example 9.9
//page512
close;
clear;
clc;
x = [65,75,80,70;72,75,82,68;84,72,62,65;66,68,72,80];
disp(x,'Original Block is x =')
[m1 n1]=size(x);
blk=input('Enter the block size:');
for i = 1 : blk : m1 
for j = 1 : blk : n1 
        y = x(i:i+(blk-1),j:j+(blk-1)) ; 
        m = mean(mean(y)); 
        disp(m,'mean value is m =')
        sig=std2(y);
        disp(sig,'Standard deviation of the block is =')
        b = y > m ; //the binary block 
        disp(b,'Binary allocation matrix is B=')
        K = sum(sum(b)); 
        disp(K,'number of ones =')
               if (K ~= blk^2 ) & ( K ~= 0) 
                ml = m-sig*sqrt(K/((blk^2)-K)); 
                disp(ml,'The value of a =')
                mu = m+sig*sqrt(((blk^2)-K)/K); 
                disp(mu,'The value of b =')
                x(i:i+(blk-1), j:j+(blk-1)) = b*mu+(1- b)*ml; 
        end 
end 
end 
disp(round(x),'Reconstructed Block is x =')
//Result
//Original Block is x =   
// 
//    65.    75.    80.    70.  
//    72.    75.    82.    68.  
//    84.    72.    62.    65.  
//    66.    68.    72.    80. 
//     
//Enter the block size:4
//mean value is m =  72.25  
//Standard deviation of the block is =  6.6282225  
//Binary allocation matrix is B=   
// 
//  F T T F  
//  F T T F  
//  T F F F  
//  F F F T  
// 
//number of ones =  6
//The value of a =  67.115801  
//The value of b =  80.806998  
//Reconstructed Block is x =   
// 
//    67.    81.    81.    67.  
//    67.    81.    81.    67.  
//    81.    67.    67.    67.  
//    67.    67.    67.    81.  