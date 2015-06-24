//Graphical//
//Example 4.3.4 
//Convolution Property Example
//x1(n)=x2(n)= [1,1,1]
clear;
clc;
close;
n =-1:1;
x1 = [1,1,1];
x2 = x1;
//Discrete-time Fourier transform
K = 500; 
k = 0:1:K;
w = %pi*k/K;
X1 = x1 * exp(-sqrt(-1)*n'*w);
X2 = x2 * exp(-sqrt(-1)*n'*w);
w = [-mtlb_fliplr(w), w(2:K+1)]; // Omega from -w to w
X1 = [mtlb_fliplr(X1), X1(2:K+1)];
X2 = [mtlb_fliplr(X2), X2(2:K+1)];
Freq_X1 = real(X1);
Freq_X2 = real(X2);
X = X1.*X2;
K1 = length(X)
k1 = 0:1:K1;
w1 = %pi*k1/K1;
w1 = [-2*mtlb_fliplr(w), 2*w];
X = [mtlb_fliplr(X), X(1:K1)];
Freq_X = real(X);
//Inv_X = X.*exp(sqrt(-1)*n'*w)
x = convol(x1,x2)
//Plotting Magitude Responses
figure(1)
a =gca();
a.x_location = 'middle'
a.y_location = 'middle'
a.x_label 
a.y_label
plot2d(w/%pi,Freq_X1)
x_label =a.x_label
y_label = a.y_label
x_label.text ='              Frequency in Radians'
y_label.text ='                              X1(w)'
//xlabel('Frequency in Radians')
//ylabel('X1(w)')
title('Frequency Response')
figure(2)
a =gca();
a.x_location = 'middle'
a.y_location = 'middle'
a.x_label
a.y_label
plot2d(w/%pi,Freq_X2)
x_label =a.x_label
y_label = a.y_label
x_label.text ='                          Frequency in Radians'
y_label.text ='                                         X2(w)'
title('Frequency Response')
figure(3)
a =gca();
a.y_location = 'middle'
a.x_label 
a.y_label 
plot2d(w1/(2*%pi),Freq_X)
x_label =a.x_label
y_label = a.y_label
x_label.text ='                          Frequency in Radians'
y_label.text ='                                          X(w)'
title('Frequency Response')
