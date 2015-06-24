//Caption:Perform gamma correction for the given colour image
//Fig.11.28: MATLAB Example7
//page603
close;
clear;
clc;
I = imread('E:\DIP_JAYARAMAN\Chapter11\ararauna.png');  //SIVP toolbox
gamma_Value = 0.5;
max_intensity = 255; //for uint8 image
//Look up table creation
LUT = max_intensity.*(([0:max_intensity]./max_intensity).^gamma_Value);
LUT = floor(LUT);
//Mapping of input pixels into lookup table values
K = double(I)+1;
J = zeros(I);
[m,n,p]= size(K);
for i = 1:m
 for j =1:n
     for k = 1:p
          J(i,j,k)= LUT(K(i,j,k));
      end
    end
end
figure(1)
ShowColorImage(I, 'Original Image');   //IPD toolbox
figure(2)
ShowColorImage(uint8(J), 'Gamma Corrected Image');   //IPD toolbox