//Caption:Scilab code to Perform Average Filtering operation 
//Fig6.18
//page 349
clc;
close;
a= imread('E:\DIP_JAYARAMAN\Chapter6\lenna.jpg');//SIVP toolbox
a=imnoise(a,'salt & pepper', 0.2); //Add salt&pepper noise tothe image 
a=double(a);
[m n]=size(a);
N=input('enter the window size='); //The window size can be 3x3,5x5etc
Start=(N+1)/2;
Out_Imag=a;
for i=Start:(m-Start+1)
for j=Start:(n-Start+1)
    limit=(N-1)/2;
    Sum=0;
    for k=-limit:limit,
        for l=-limit:limit,
            Sum=Sum+a(i+k,j+l);
        end
    end
    Out_Imag(i,j)=Sum/(N*N);
end
end
a = uint8(a);
Out_Imag = uint8(Out_Imag);
ShowImage(a,'original Image')
title('Noisy Image')
figure
ShowImage(Out_Imag,'average filtered Image')
title('5x5 average filtered Image');