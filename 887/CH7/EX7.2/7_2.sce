clc
//ex7.2
N=0.392;      //decimal
DP=N;      //decimal part(no integer part)
i=1;
x=1;
//Each decimal digit is stored in D(x)
while (x<=9)
DP=DP*2;
D(x)= floor (DP);
x=x+1;
DP= modulo (DP ,1);
end
DP=0;
for j=1: length (D)
//bits of decimal part are multiplied with their position values and adding them
    DP=DP+(10^(-1*j)*D(j));
end
disp(DP,'Binary form of 0.392 is')
