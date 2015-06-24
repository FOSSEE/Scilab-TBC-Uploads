//clear//
//Caption:Fano metric for –binary symmetric channel using convolutional code
//Example8.11: Convolutional code for binary symmetric channel
clc;
r = 1/2; //code rate
n =2; //number of bits
pe = 0.04; //transition probility 
p = 1-pe;// probability of correct reception
gama_1 = 2*log2(p)+2*(1-r); //branch metric for correct reception
gamma_2 = log2(pe*p)+1; //branch metric for any one correct recption
gamma_3 = 2*log2(pe)+1; //branch metric for no correct reception
disp(gama_1,'branch metric for correct reception')
disp(gamma_2,'branch metric for any one correct recption')
disp(gamma_3,'branch metric for no correct reception')
//branch metric for correct reception   
//     0.8822126  
//  branch metric for any one correct recption   
//   - 3.7027499  
//  branch metric for no correct reception   
//   - 8.2877124  
