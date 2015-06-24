//Caption: Scilab code to perform wavelet decomposition
//Fig12.10
//Page624
clc;
close;
x = ReadImage('E:\DIP_JAYARAMAN\Chapter12\lenna.jpg');
//The image in unsigned integer or double has to be converted into normalized
//double format
x = im2double(x);
//First Level decomposition
[CA,CH,CV,CD]=dwt2(x,'db1');
//Second level decomposition
[CA1,CH1,CV1,CD1]=dwt2(CA,'db1');
CA = im2int8(CA);
CH = im2int8(CH);
CV = im2int8(CV);
CD = im2int8(CD);
CA1 = im2int8(CA1);
CH1 = im2int8(CH1);
CV1 = im2int8(CV1);
CD1 = im2int8(CD1);
A = [CA,CH;CV,CD];
B = [CA1,CH1;CV1,CD1];
imshow(B)
title('Result of Second Level Decomposition')