function [y,X,H] = conv2d2(x,h)

[x1,x2] = size(x);
[h1,h2] = size(h);
X = zeros(x1+h1-1,x2+h2-1); 
H = zeros(x1+h1-1,x2+h2-1); 
Y = zeros(x1+h1-1,x2+h2-1); 
for i = 1:x1
    for j = 1:x2
        X(i,j)=x(i,j);
    end
end
for i =1:h1
    for j = 1:h2
        H(i,j)=h(i,j);
    end
end
disp(X,'x=') 
disp(H,'h =')
Y = fft2d(X).*fft2d(H);
disp(Y)
y = ifft2d(Y);
endfunction