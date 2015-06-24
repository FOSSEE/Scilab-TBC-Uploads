//Example 5.4
clear;
clc ;
close ;
x = [1,2,3,4,5,2,3,1];
disp(x,"x[n]=");
//DFT Computation
X = fft (x , -1);
//Display sequence X[k] in command window
disp(X,"X[k]=");

//Finding time shifted input sequence x[n-2]
y=x;
for i=1:2
    a=y(1);
    for j=1:length(y)-1
        y(j)=y(j+1);
     end
     y(length(y))=a;
end
disp(y,"x2[n]=x[n-2]=");
//using Time-shifting property
X2=[zeros(1:8)];
w=-%i;
for j=1:8
    X2(j)=[(w)^(j-1)]*X(j);
end
disp(X2,"Using time-shifting property,DFT of x[n-2]=X2[k]=");
