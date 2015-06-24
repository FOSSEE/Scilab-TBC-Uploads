//Caption: Scilab code to perform watershed transform
//Fig7.30
//Page396
clc;
close;
b = imread('E:\DIP_JAYARAMAN\Chapter7\teaset.png');
a = rgb2gray(b);
global EDGE_SOBEL;
Gradient = EdgeFilter(a, EDGE_SOBEL);
Threshold1 = CalculateOtsuThreshold(Gradient); // determine a threshold
EdgeImage = ~SegmentByThreshold(Gradient,Threshold1);
DistanceImage = DistanceTransform(EdgeImage);
Threshold2 = CalculateOtsuThreshold(DistanceImage) // determine a threshold
ThresholdImage = SegmentByThreshold(DistanceImage,Threshold2);
MarkerImage = SearchBlobs(ThresholdImage);
SegmentedImage = Watershed(Gradient,MarkerImage);
figure
ShowColorImage(b,'teaset')
title('teaset.png')
figure
ColorMapLength = length(unique(SegmentedImage));
ShowImage(SegmentedImage,'Result of Watershed Transform',jetcolormap(ColorMapLength)); 