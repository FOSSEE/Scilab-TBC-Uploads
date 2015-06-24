//clear//
//Caption:Practical solution: Raised Cosine 
//Figure6.7(b):Practical Solution for Intersymbol Interference
//Raised Cosine Spectrum
//page 250
close;
clc;
rb = input('Enter the bit rate:');
Tb =1/rb;
t =-3:1/100:3;
Bo = rb/2;
Alpha =0;      //Intialized to zero
x =t/Tb;
for j =1:3
  for i =1:length(t)
    if((j==3)&((t(i)==0.5)|(t(i)==-0.5)))
        p(j,i) = sinc_new(2*Bo*t(i));
    else
        num =  sinc_new(2*Bo*t(i))*cos(2*%pi*Alpha*Bo*t(i));
        den =   1-16*(Alpha^2)*(Bo^2)*(t(i)^2)+0.01; 
        p(j,i)= num/den;
    end
  end
  Alpha = Alpha+0.5;
end
a =gca();
plot2d(t,p(1,:))
plot2d(t,p(2,:))
poly1= a.children(1).children(1);
poly1.foreground=2;
plot2d(t,p(3,:))
poly2= a.children(1).children(1);
po1y2.foreground=4;
poly2.line_style = 3;
xlabel('t/Tb------>');
ylabel('p(t)------->');
title('RAISED COSINE SPECTRUM - Practical Solution for ISI')
legend(['ROlloff Factor =0','ROlloff Factor =0.5','ROlloff Factor =1'])
xgrid(1)
//Result
//Enter the bit rate:1
