//Graphical//
//Example 5.3.1 
//Performing Linear Filtering (i.e) Linear Convolution
//Using DFT
clear;
clc;
close;
h = [1,2,3];    //Impulse Response of LTI System
x = [1,2,2,1];  //Input Response of LTI System
N1 = length(x)
N2 = length(h)
disp('Length of Output Response y(n)')
N = N1+N2-1
//Padding zeros to Make Length of 'h' and 'x'
//Equal to length of output response 'y'
h1 = [h,zeros(1,8-N2)]
x1 = [x,zeros(1,8-N1)]
//Computing DFT 
H = fft(h1,-1)
X = fft(x1,-1)
//Multiplication of 2 DFTs
Y = X.*H
//Linear Convolution Result
y =abs(fft(Y,1))
for i =1:8
  if(abs(H(i))<0.0001)
    H(i) =0;
  end
  if(abs(X(i))<0.0001)
    X(i) =0;
  end
  if(abs(y(i))<0.0001)
    y(i) =0;
  end
end
disp(X,'X=')
disp(H,'H=')
disp(y,'Output response using Convolution function')
y = convol(x,h)