//Page Number: 5.31
//Example 5.15
clc;

mp=1; //Assume peak amplitude is unity
//Given
del=0.02*mp;

L=(mp*2)/del;

for (i=0:10)
  j=2^i;
  if(j>=L)
    L1=j;
    break;
    end
end
n=log2(L1);// bits per sample
disp(n,'Number of bits');
