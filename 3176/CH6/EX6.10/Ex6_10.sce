//Ex6_10 : 
//Color Balancing.

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

////////////////// Tonal Correction for the Flat Image  ////////////////////////
Color=imread("Ex6_10.tif");
Color=imresize(Color,0.25);
[nr nc]=size(Color);
figure,ShowColorImage(Color,'Gray Image');
title('Original Image','color','blue','fontsize',4);

C=255-Color(:,:,1);
M=255-Color(:,:,2);
Y=255-Color(:,:,3);
/////////////////////  Color Balance Correction in Cyan Component //////////////////////
D=0:1/256:1;
H1=1*D^2.5;  // Transfer Function (Design from the Gamma Funcetion).
H2=1*D^0.5;  // Transfer Function (Design from the Gamma Funcetion).
figure,subplot(211),plot(H1);
xlabel('Intensity');
ylabel('Magnitude');
title('HSI Intensity Transformation Function(Heavy in Cyan)');
subplot(212),plot(H2);
xlabel('Intensity');
ylabel('Magnitude');
title('HSI Intensity Transformation Function (Weak in Cyan)','color','blue','fontsize',4);

C_Modify=[];
for i=1:nr 
    for j=1:nc                   
           C_Modify1(i,j,1)=H1(uint16(C(i,j,1))+1);
           C_Modify2(i,j,1)=H2(uint16(C(i,j,1))+1);
    end
end
Balance_Image1(:,:,1)=C_Modify1;
Balance_Image1(:,:,2)=M;
Balance_Image1(:,:,3)=Y;
figure,ShowColorImage(Balance_Image1,'RGB Image');
title('Color Balanced image','color','blue','fontsize',4);

Balance_Image2(:,:,1)=C_Modify2;
Balance_Image2(:,:,2)=M;
Balance_Image2(:,:,3)=Y;
figure,ShowColorImage(Balance_Image2,'RGB Image');
title('Color Balanced image','color','blue','fontsize',4);

/////////////////////  Color Balance Correction in Megenta Component //////////////////////
D=0:1/256:1;
H1=1*D^2.5;  // Transfer Function (Design from the Gamma Funcetion).
H2=1*D^0.5;  // Transfer Function (Design from the Gamma Funcetion).
figure,subplot(211),plot(H1);
xlabel('Intensity');
ylabel('Magnitude');
title('HSI Intensity Transformation Function(Heavy in Megenta)','color','blue','fontsize',4);
subplot(212),plot(H2);
xlabel('Intensity');
ylabel('Magnitude');
title('HSI Intensity Transformation Function (Weak in Megenta)','color','blue','fontsize',4);
for i=1:nr 
    for j=1:nc                   
           Y_Modify1(i,j,1)=H1(uint16(Y(i,j,1))+1);
           Y_Modify2(i,j,1)=H2(uint16(Y(i,j,1))+1);
    end
end
Balance_Image1(:,:,1)=255-C;
Balance_Image1(:,:,2)=255-M;
Balance_Image1(:,:,3)=255-Y_Modify1;
figure,ShowColorImage(Balance_Image1,'RGB Image');
title('Color Balanced image','color','blue','fontsize',4);

Balance_Image2(:,:,1)=255-C;
Balance_Image2(:,:,2)=255-M;
Balance_Image2(:,:,3)=255-Y_Modify2;
figure,ShowColorImage(Balance_Image2,'RGB Image');
title('Color Balanced image','color','blue','fontsize',4);

/////////////////////  Color Balance Correction in Yellow Component //////////////////////
D=0:1/256:1;
H1=1*D^2.5;  // Transfer Function (Design from the Gamma Funcetion).
H2=1*D^0.5;  // Transfer Function (Design from the Gamma Funcetion).
figure,subplot(211),plot(H1);
xlabel('Intensity');
ylabel('Magnitude');
title('HSI Intensity Transformation Function(Heavy in Yellow)','color','blue','fontsize',4);
subplot(212),plot(H2);
xlabel('Intensity');
ylabel('Magnitude');
title('HSI Intensity Transformation Function (Weak in Yellow)','color','blue','fontsize',4);
for i=1:nr 
    for j=1:nc                   
           M_Modify1(i,j,1)=H1(uint16(M(i,j,1))+1);
           M_Modify2(i,j,1)=H2(uint16(M(i,j,1))+1);
    end
end
Balance_Image1(:,:,1)=255-C;
Balance_Image1(:,:,2)=255-M_Modify1;
Balance_Image1(:,:,3)=255-Y;
figure,ShowColorImage(Balance_Image1,'RGB Image');
title('Color Balanced image','color','blue','fontsize',4);

Balance_Image2(:,:,1)=255-C;
Balance_Image2(:,:,2)=255-M_Modify2;
Balance_Image2(:,:,3)=255-Y;
figure,ShowColorImage(Balance_Image2,'RGB Image');
title('Color Balanced image','color','blue','fontsize',4);
