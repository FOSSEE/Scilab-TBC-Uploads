//Ex5_4
//Illustration of Adaptive Local Noise Reduction Filtering
// Version : Scilab 5.4.1
// Operating System : Window-xp, Window-7
//Toolbox: Image Processing Design 8.3.1-1
//Toolbox: SIVP 0.5.3.1-2
//Reference book name : Digital Image Processing
//book author: Rafael C. Gonzalez and Richard E. Woods

clc;
clear;
close;
xdel(winsid());

///////////////// Function File /////////////////////
function [f]=arithmetic_mean(v,m,n)
        w=fspecial('average',m); 
        f=imfilter(v,w); 
endfunction

function [f]=geometric_mean1(g,m,n);//gmean1() is used to filter an image using Geometric mean filter 
    size1=m;
    q=m*n;
    g=double(g);
    [nr,nc]=size(g);
    temp=zeros(nr+2*floor(size1/2),nc+2*floor(size1/2));
    temp(ceil(size1/2):nr+ceil(size1/2)-1,ceil(size1/2):nc+ceil(size1/2)-1)=g(1:$,1:$)
    temp=temp+1;
    for i=ceil(size1/2):nr+ceil(size1/2)-1
        for j=ceil(size1/2):nc+ceil(size1/2)-1
            t=temp(i-floor(size1/2):1:i+floor(size1/2),j-floor(size1/2):1:j+floor(size1/2)) ;
            temp2(i,j)=prod(t);                
        end
    end
    temp3=temp2.^(1/q);
    nn=temp3(ceil(size1/2):nr+ceil(size1/2)-1,ceil(size1/2):nc+ceil(size1/2)-1)
    f1=nn-1;
    f=mat2gray(f1)
endfunction


///////////////// Main Programm /////////////////////
A=imread("Ex5_4.tif");
B = imnoise(A,'gaussian',0,0.01);
[rw1 ,cl1]=size(B);
figure;
ShowImage(B,'Gaussian noise added'); 
title('Image with gaussian noise','color','blue','fontsize',4);

/////////////////////////////////////    Arithmetical Mean Filter    ////////////////////
m=7;n=7;
[f]=arithmetic_mean(B,m,n);
figure,ShowImage(f,'Recovered Image');
title('Restored Image with Arithmetical Mean Filter','color','blue','fontsize',4);

/////////////////////////////////////    Geometric Mean Filter    ////////////////////
m=7;n=7;
[f]=geometric_mean1(B,m,n);
figure,ShowImage(f,'Recovered Image');
title('Restored Image with Geometric Mean Filter','color','blue','fontsize',4);



////////////////////Adaptive Local Noise Reduction///////////////////////
B= double(B);
M=7;
N=7;    
lvar=zeros([rw1-M+1,cl1-N+1]);
lmean=zeros([rw1-M+1,cl1-N+1]);
temp=zeros([rw1-M+1,cl1-N+1]);
F=zeros([rw1-M+1,cl1-N+1]);
sz=(rw1-M+1)*(cl1-N+1);
for i=1:rw1-M+1
    for j=1:cl1-N+1
        temp=B(i:i+(M-1),j:j+(N-1));
        lmean(i,j)=mean(temp);
        lvar(i,j)=mean(temp.*temp)-mean(temp).^2;
     end
end
nvar=sum(lvar)/sz;
lvar=max(lvar,nvar);     
C=B(M/2:rw1-M/2,N/2:cl1-N/2);
F=nvar./lvar;
F=F.*(C-lmean);
F=C-F;
F=uint8(F);
figure;
ShowImage(F,'Restored');
title('Restored Image using Adaptive Local filter','color','blue','fontsize',4);
