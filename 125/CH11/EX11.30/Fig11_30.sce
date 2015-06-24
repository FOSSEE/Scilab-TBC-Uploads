//Caption:Perform Pseudo-Colouring Operation
//Fig.11.30
//page604
close;
clear;
clc;
K = imread('E:\DIP_JAYARAMAN\Chapter11\lenna.jpg');  //SIVP toolbox
[m,n]= size(K);
I = uint8(K);
for i = 1:m
    for j =1:n
        if (I(i,j)>=0 & I(i,j)<50)
            J(i,j,1)=I(i,j)+50;
            J(i,j,2)=I(i,j)+100;
            J(i,j,3)=I(i,j)+10;
        elseif (I(i,j)>=50 & I(i,j)<100)
            J(i,j,1)=I(i,j)+35;
            J(i,j,2)=I(i,j)+128;
            J(i,j,3)=I(i,j)+10;
        elseif(I(i,j)>=100 & I(i,j)<150)
            J(i,j,1)=I(i,j)+152;
            J(i,j,2)=I(i,j)+130;
            J(i,j,3)=I(i,j)+15;
        elseif(I(i,j)>=150 & I(i,j)<200)
            J(i,j,1)=I(i,j)+50;
            J(i,j,2)=I(i,j)+140;
            J(i,j,3)=I(i,j)+25;
        elseif(I(i,j)>=200 & I(i,j)<=256)
            J(i,j,1)=I(i,j)+120;
            J(i,j,2)=I(i,j)+160;
            J(i,j,3)=I(i,j)+45;
        end
    end
end
figure(1)
ShowImage(K, 'Original Image');   //IPD toolbox
figure(2)
ShowColorImage(J, 'Pseudo Coloured Image');   //IPD toolbox