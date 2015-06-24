//Caption: Scilab code to implement watermarking in spatial domain
//Fig12.57
//Page662
clc
close 
a = imread('E:\DIP_JAYARAMAN\Chapter12\cameraman.jpg');
figure
imshow(a)
title('Base Image');
b = imread('E:\DIP_JAYARAMAN\Chapter12\keyimage.jpg');
b = rgb2gray(b);
b = imresize(b,[32 32],'bicubic');
[m1 n1]=size(b);
figure
imshow(b)
title('Mark Image');
[m n]=size(a);
i1 = 1;
j1 = 1;
p = 1;
c = a;
iii = 1;
jjj = 1;
a = uint8(a);
b = uint8(b);
for ff = 1:8
    for i = 1:32
        jjj = 1;
        for j = j1:j1+n1-1
            a(i,j) = bitand(a(i,j),uint8(254)); // LSB of base image is set to zero.
            temp = bitand(b(i,jjj),uint8((2^ff)-1)); //MSB of the mark is extracted.
            temp = temp/((2^ff)-1);
            c(i,j) = bitor(a(i,j),uint8(temp));//MSB of mark is inerted into the %LSB of the base
            jjj = jjj+1;
        end
    end
    j1 = j1+32;
end
imshow(c)
title('Marked Image');
imwrite(c,'E:\DIP_JAYARAMAN\Chapter12\markimg.jpg');