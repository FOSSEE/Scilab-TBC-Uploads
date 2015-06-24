function [a] =ifft2d(a2) 
//a2 = 2D-DFT of any real or complex 2D matrix
//a = 2D-IDFT of a2  
m=size(a2,1)
n=size(a2,2)
//Inverse Fourier transform along the rows
for i=1:n
a1(:,i)=exp(2*%i*%pi*(0:m-1)'.*.(0:m-1)/m)*a2(:,i) 
end
//Inverse fourier transform along the columns
for j=1:m
atemp=exp(2*%i*%pi*(0:n-1)'.*.(0:n-1)/n)*(a1(j,:)).' 
a(j,:)=atemp.'
end
a = a/(m*n)
a = real(a)
endfunction