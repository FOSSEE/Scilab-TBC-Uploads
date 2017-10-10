//Ex10_4
// Behavior of the First and Second Derivative of a Noisy Edge
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

a=imread("Ex10_4.tif");
a1=im2double(a);
figure,ShowImage(a,'Gray Image');
title('Original Image','color','blue','fontsize',4);
[M,N]=size(a);
first_order=zeros(M,N);
second_order=zeros(M,N);

for i=2:M-1
    for j=2:N-1        
        first_order(i,j)=a(i,j+1)-a(i,j);
        second_order(i,j)=double(a1(i,j+1)+a1(i,j-1)-(2*a1(i,j)));       
    end
end

figure,ShowImage(double(first_order),'First Order Difference Image');
title('First Order Difference Image','color','blue','fontsize',4);

forward_count=0;
reverse_count=0;
for j= 2:N-1    // Finding First Zero Crossing Point
    if(second_order(5,j)==0 &amp; second_order(5,j+1)&gt;0) 
        forward_count=forward_count+1;
        if(forward_count==1)
            ther1=second_order(5,j+1);
            break;
        end
    end    
end

for j= N-1:-1:2  // Finding Last Zero Crossing Point
    if(second_order(5,j)==0 &amp; second_order(5,j-1)&lt;0) 
        reverse_count=reverse_count+1;
        if(reverse_count==1)
            ther2=second_order(5,j-1);
            break;
        end
    end    
end

for i=1:M  // Removing unwanted Intensity range
    for j=1:N
        if(second_order(i,j)==ther1) 
            second_order1(i,j)=255;
        else if(second_order(i,j)==ther2) 
            second_order1(i,j)=-255;
        else 
            second_order1(i,j)=128;
        end
    end
end
end

figure,ShowImage(second_order1,'Second Order Difference Image');
title('Second Order Difference Image','color','blue','fontsize',4);

t=a(5,1:N);
t1=first_order(5,1:N);
t2=second_order1(5,1:N);
figure;
subplot(311);
plot(1:length(t),t);// 
title('Intensity Profile','color','blue','fontsize',4);
subplot(312);
mtlb_axis([1,N,0,1.5]);
plot(1:length(t1),t1);// 
title('Intensity Profile of First order Derivative','color','blue','fontsize',4);
subplot(313);
plot(1:length(t2),t2);//
title('Intensity Profile of Second order Derivative','color','blue','fontsize',4);