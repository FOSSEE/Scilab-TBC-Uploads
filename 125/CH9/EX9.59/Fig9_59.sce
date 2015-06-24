//Caption: Program performs Block Truncation Coding(BTC) by choosing different 
//block sizes
//Fig.9.59: MATLAB Example1
//page514
close;
clc;
x =imread('E:\Digital_Image_Processing_Jayaraman\Chapter9\lenna.jpg');  //SIVP toolbox
//x=imresize(x,[256 256]);
x1=x;
x=double(x);
[m1 n1]=size(x);
blk=input('Enter the block size:');
for i = 1 : blk : m1 
for j = 1 : blk : n1 
        y = x(i:i+(blk-1),j:j+(blk-1)) ; 
        m = mean(mean(y)); 
        sig=std2(y);
        b = y > m ; //the binary block 
        K = sum(sum(b)); 
               if (K ~= blk^2 ) & ( K ~= 0) 
                ml = m-sig*sqrt(K/((blk^2)-K)); 
                mu = m+sig*sqrt(((blk^2)-K)/K); 
                x(i:i+(blk-1), j:j+(blk-1)) = b*mu+(1- b)*ml; 
        end 
end 
end 
//imshow(uint8(x))
//title('Reconstructed Image')
x = uint8(x);
figure(1)
imshow(x1)
title('Original Image');   //IPD toolbox
figure(2)
ShowImage(x, 'Reconstructed Image');   //IPD toolbox
title('Block Size = 8')