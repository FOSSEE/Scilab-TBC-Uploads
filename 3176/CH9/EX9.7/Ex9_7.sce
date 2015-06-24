//Ex9_7
//Using Connected Components to Detect Foreign Object in Packaged Food
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

Color=imread("Ex9_7.png");
Image=rgb2gray(Color);
//Image=im2bw(Image,0.65);
[nr nc]=size(Image);
figure,ShowImage(Image,'Binary Image');
title('Binary Image','color','blue','fontsize',4);

Image_Binary=im2bw(Image,0.825);  // Binarization Process with Specific Threshold
figure,ShowImage(Image_Binary,'Binary Image');
title('Binary Image','color','blue','fontsize',4);

Mask=CreateStructureElement('square',3);  // Create Structuring Element
Image_Eroide=ErodeImage(Image_Binary,Mask);  // Erosion Operation
figure,ShowImage(Image_Eroide,'Eroide Image');
title('Eroide Image ','color','blue','fontsize',4);

BlobImage=SearchBlobs(Image_Eroide);  // Connected Component labelling
IsCalculated = CreateFeatureStruct(%f); // Feature struct is generated.
IsCalculated.PixelList = %t; // The bounding box shall be calculated for each blob.
BlobStatistics = AnalyzeBlobs(BlobImage, IsCalculated);
 
Blob_Total=max(BlobImage);
Blob_Area=[];
for i=1:Blob_Total
    temp=size(BlobStatistics(i).PixelList);
    Blob_Area=[Blob_Area temp(1)];    
end

disp(Blob_Area',"Blob Area")
