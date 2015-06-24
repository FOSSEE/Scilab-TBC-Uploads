//Ex3_8
// Histogram Specification
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
r=[0 1 2 3 4 5 6 7];  // Intensity
nk=[790 1023 850 656 329 245 122 81];  //Total No. of Pixels having Same Intensity
probability_Specified=[0.00 0.00 0.00 0.15 0.20 0.30 0.20 0.15]; // Histogram Specification
M=sum(nk);
probability_r=nk/M;  // Probablity calculation
for i=1:length(r)
    sum_1=0;
    sum_2=0;
    for j=1:i
        sum_1=sum_1+probability_r(j);         // Histogram Equalization
        sum_2=sum_2+probability_Specified(j); // Histogram Specification
    end
    s(i)=max(r)*sum_1;
    G(i)=max(r)*sum_2;
end

s=round(s); // Rounding Approach
disp('Histogram Equalization:')
disp(s);
G=round(G); // Rounding Approach
disp('Histogram Specification G(Zq):')
disp(G);
[nr nc]=size(s);

for i=0:max(r)
    [row col]=find(G(i+1)==s);
    len=length(row);
    if(len>0)
        sum_1=0;
        for j=1:len
            sum_1=sum_1+probability_r(row(j));
        end
        Hist_Spe(i+1)=sum_1;
    end
    if(len==0)               
        if(G(i+1)==0)
        Hist_Spe(i+1)=0;
    else
        Hist_Spe(i+1)=probability_r(G(i+1));
    end
end
end
disp('Histogram After Matching:')
disp(Hist_Spe);

figure,bar(r,probability_r,0.1);
title('Original Histrogram','color','blue','fontsize',4);
xlabel('Intensity');
ylabel('Probability of Same Intensity');

figure,bar(r,probability_Specified,0.1);
title('Specified Histogram','color','blue','fontsize',4);
xlabel('Intensity');
ylabel('Probability of Same Intensity');

figure,bar(r,Hist_Spe,0.1);
title('Histogram matching','color','blue','fontsize',4);
xlabel('Intensity');
ylabel('Probability of Same Intensity');
