//Caption: Scilab code for Edge Detection using Different Edge detectors 
//[1]. Sobel [2].Prewitt [3].Log  [4].Canny
//Fig7.27
//page389
close;
clc;
a = imread('E:\DIP_JAYARAMAN\Chapter7\sailing.jpg');
a = rgb2gray(a);
c = edge(a,'sobel');
d = edge(a,'prewitt');
e = edge(a,'log');
f = edge(a,'canny');
ShowImage(a,'Original Image')
title('Original Image')
figure
ShowImage(c,'Sobel')
title('Sobel')
figure
ShowImage(d,'Prewitt')
title('Prewitt')
figure
ShowImage(e,'Log')
title('Log')
figure
ShowImage(f,'Canny')
title('Canny')