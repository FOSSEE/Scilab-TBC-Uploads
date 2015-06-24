//Caption:Compute the histogram of the colour image
//Fig.11.16: MATLAB Example3
//page595
clc;
close;
I = imread('E:\DIP_JAYARAMAN\Chapter11\lavender.jpg');  //SIVP toolbox
figure(1)
ShowColorImage(I, 'Original Color Image');   //IPD toolbox
J = im2double(I);
[index,map] = RGB2Ind(I); //IPD toolbox
pixels = prod(size(index));
hsv = rgb2hsv(J);
h = hsv(:,1);
s = hsv(:,2);
v = hsv(:,3);
//Finds location of black and white pixels
darks = find(v<0.2);
lights = find(s<0.05 & v>0.85);
h([darks lights])=-1;
//Gets the number of all pixels for each colour bin
black_pixels = length(darks)/pixels;
white_pixels = length(lights)/pixels;
red = length(find((h > .9167 | h <= .083) & h ~= -1))/pixels;
yellow = length(find(h > .083 & h <= .25))/pixels;
green = length(find(h > .25 & h <= .4167))/pixels;
cyan = length(find(h > .4167 & h <= .5833))/pixels;
blue = length(find(h > .5833 & h <= .75))/pixels;
magenta = length(find(h > .75 & h <= .9167))/pixels;
//Plots histogram
figure(2)
a=gca();
a.data_bounds=[0,0;8,1]
n = 0:0.1:1;
plot2d2(n,red*ones(1,length(n)),5)
n1 = 1:0.1:2;
plot2d2(n1,yellow*ones(1,length(n)),7)
n2 = 2:0.1:3;
plot2d2(n2,green*ones(1,length(n)),8)
n3 = 3:0.1:4;
plot2d2(n3,cyan*ones(1,length(n)),9)
n4 = 4:0.1:5;
plot2d2(n4,blue*ones(1,length(n)),2)
n5 = 5:0.1:6;
plot2d2(n5,magenta*ones(1,length(n)),3)
n6 = 6:0.1:7;
plot2d2(n6,white_pixels*ones(1,length(n)),0)
n7 = 7:0.1:8
plot2d2(n7,black_pixels*ones(1,length(n)),5)