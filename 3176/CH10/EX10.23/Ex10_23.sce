//Ex10_23
// Segmentation by Region Growing
// Version : Scilab 5.4.1
// Operating System : Window-xp, Window-7
//Toolbox: Image Processing Design 8.3.1-1
//Toolbox: SIVP 0.5.3.1-2
//Reference book name : Digital Image Processing
//book author: Rafael C. Gonzalez and Richard E. Woods

clc;
close;
clear;
xdel(winsid())//to close all currently open figure(s).
a=imread("Ex10_23.tif");
a1=im2double(a);
figure,ShowImage(a1,'Gray Image');
title('Original Image','color','blue','fontsize',4);
[M,N]=size(a);

[count cell]=imhist(a);
figure,plot2d3(cell,count);
title('Histogram','color','blue','fontsize',4);

th=254/255;
Thresh_Image=im2bw(a1,th);
figure,ShowImage(Thresh_Image,'Gray Image');
title('Thresholded Image','color','blue','fontsize',4);
for i=1:M
    for j=1:N
        if(Thresh_Image(i,j)) then
            Thresh_Image1(i,j)=1;
        else
            Thresh_Image1(i,j)=0;
        end
    end
end

BlobImage = SearchBlobs(Thresh_Image);  // Connected Compoment Labelling
IsCalculated = CreateFeatureStruct(%f); // Feature struct is generated.
IsCalculated.Centroid = %t; // The bounding box shall be calculated for each blob.
BlobStatistics = AnalyzeBlobs(BlobImage, IsCalculated);
Seed_Image=zeros(M,N);
for i=1:max(BlobImage) // Centroid Calculation
    Seed_Image(BlobStatistics(i).Centroid(1,2),BlobStatistics(i).Centroid(1,1))=1;
end
figure,ShowImage(Seed_Image,'Gray Image');
title('Seed Point Image','color','blue','fontsize',4);

Diff=uint8(255*imsubtract(a1,Thresh_Image1));
figure,ShowImage(Diff,'Gray Image');
title('Seed Point Image','color','blue','fontsize',4);
[count cell]=imhist(Diff);
figure,plot2d3(cell,count);
title('Histogram','color','blue','fontsize',4);

Thresh_Image2=uint8(zeros(M,N))
for i=1:M
    for j=1:N
        if(Diff(i,j)<=68) then
            Thresh_Image2(i,j)=255;
        else if(Diff(i,j)>68 & Diff(i,j)<=165) then
            Thresh_Image2(i,j)=125;
        else
            Thresh_Image2(i,j)=0;
        end
    end
    end
end
figure,ShowImage(uint8(Thresh_Image2),'Gray Image');
title('Seed Point Image','color','blue','fontsize',4);



