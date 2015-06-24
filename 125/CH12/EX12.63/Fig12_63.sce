//Caption: Scilab code to implement wavelet-based watermarking
//Fig12.63
//Page666
clc;
close;
//Original Image
img = imread('E:\DIP_JAYARAMAN\Chapter12\cameraman.jpg');
figure
imshow(img)
title('Original Image');
[p q] = size(img);
//Generate the key
//key = imread('E:\DIP_JAYARAMAN\Chapter12\keyimg1.png');
//key = imresize(key,[p q]); 
key = imread('E:\DIP_JAYARAMAN\Chapter12\keyimage.jpg');
key = rgb2gray(key);
c = 0.001; //Initialise the weight of Watermarking
figure
imshow(key)
title('Key');
//Wavelet transform of original image (base image)
img = double(img);
key = double(key);
[ca,ch,cv,cd] = dwt2(img,'db1');//Compute 2D wavelet transform
//Perform the watermarking
y = [ca ch;cv cd];
Y = y + c*key; 
p=p/2;
q=q/2;
for i=1:p
    for j=1:q
        nca(i,j) = Y(i,j);
        ncv(i,j) = Y(i+p,j);
        nch(i,j) = Y(i,j+q);
        ncd(i,j) =  Y (i+p,j+q);
    end
end
//Display the Watermarked image
wimg = idwt2(nca,nch,ncv,ncd,'db1');
wimg1 = uint8(wimg);
figure
imshow(wimg1)
title('Watermarked Image')
//Extraction of key from Watermarked image
[rca,rch,rcv,rcd] = dwt2(wimg,'db1'); //Compute 2D wavelet transform
n1=[rca,rch;rcv,rcd];
N1=n1-y;
N1 = N1*4;
N1 = im2int8(N1);
figure
imshow(N1)
title('Extract the key from watermarked image')