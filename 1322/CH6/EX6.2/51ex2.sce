
//sum of 3 consecutive odd no.'s is 81
clear;
clc;
close;
//let the 3 consecutive odd numbers be 2n+1,2n+3,2n+5
n=poly(0,'n');
expr=(2*n+1)+(2*n+3)+(2*n+5);
for n=1:100
  if((2*n+1)+(2*n+3)+(2*n+5)==81)
    //mprintf("n=%i \n",n);
    break
  end
end
n1=2*n+1;
n2=2*n+3;
n3=2*n+5;
mprintf("\n the numbers are %i ,%i, %i\n",n1,n2,n3)


