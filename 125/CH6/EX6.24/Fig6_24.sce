//Caption:Scilab code to Perform Trimmed Average Filter 
//Alpha trimmed average filter
//Fig6.24
//page 355
clc;
close;
c = imread('E:\DIP_JAYARAMAN\Chapter6\lenna.jpg');//SIVP toolbox
s = 1; //s denotes the number of values to be left in the end
r = 1;
N = 9; //3x3 window
a = double(imnoise(c,'gaussian'));
[m,n] = size(a);
b = zeros(m,n);
for i= 2:m-1
    for j = 2:n-1
        mat = [a(i,j),a(i,j-1),a(i,j+1),a(i-1,j),a(i+1,j),a(i-1,j-1),...
                a(i-1,j+1),a(i-1,j+1),a(i+1,j+1)];
        sorted_mat = gsort(mat);
        Sum=0;
        for k=r+s:(N-s)
            Sum = Sum+mat(k);
        end
        b(i,j)= Sum/(N-r-s);
    end
end
a = uint8(a);
b = uint8(b);
//figure
//imshow(c) 
//title('Original Image')
figure
ShowImage(a,'noisy image') 
title('noisy image')
figure
ShowImage(b,'Trimmed Average Filtered Image')
title('Trimmed Average Filtered Image')