//Caption:Scilab code to Perform median filtering
//Fig6.21
//page 352
clc;
close;
c = imread('E:\DIP_JAYARAMAN\Chapter6\cameraman.jpg');//SIVP toolbox
N = input('Enter the window size'); 
a = double(imnoise(c,'salt & pepper',0.2));
[m,n] = size(a);
b = a;
if(modulo(N,2)==1)
  Start = (N+1)/2;
  End = Start;
  limit1 = (N-1)/2;
  limit2 = limit1;
else
  Start = N/2;
  End = Start+1;
  limit1 = (N/2)-1;
  limit2 = limit1+1;
end
for i = Start:(m-End+1)
    for j = Start:(n-End+1)
        I =1;
        for k = -limit1:limit2
            for l = -limit1:limit2
                mat(I)= a(i+k,j+1)
                I = I+1;
            end
        end
        mat = gsort(mat);
        if(modulo(N,2)==1)
        b(i,j) = (mat(((N^2)+1)/2));
        else
        b(i,j) = (mat((N^2)/2)+mat(((N^2)/2)+1))/2;
        end
    end
end
a = uint8(a);
b = uint8(b);
figure
ShowImage(c,'Original Image') 
title('Original Image')
figure
ShowImage(a,'noisy image') 
title('noisy image')
figure
ShowImage(b,'Median Filtered Image')
title('5x5 Median Filtered Image')