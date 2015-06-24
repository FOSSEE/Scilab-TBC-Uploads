//Caption:  probability density function 
//Example 2.23
//page no 
//verify the area under curve is unity,prove that the mean is zero
clc;
clear;
//continuous random variable X in the range(-3,3)
//PDF of fucntions
function y=fX1(x)
         y=((3+x)^2)/16; //for -3<=x<=-1
endfunction
a1=-3;
a2=-1;

function y=fX2(x),       //for-1<=x<=1
        y=(6-2*x^2)/16;
endfunction
b1=-1;
b2=1;

function y=fX3(x)
         y=((3-x)^2)/16;   //for 1<=x<=3
endfunction
c1=1;
c2=3;
//area under pdf curve
//area = integral Fx(x)dx from -3 to 3
area =intg(a1,a2,fX1)+intg(b1,b2,fX2)+intg(c1,c2,fX3);
disp(area,"Area =");
disp("  Therefore area under PDF curve is  unity.");
function y=f1(x)
         y=(x*(3+x)^2)/16;    //for -3<=x<=-1
endfunction
a1=-3;
a2=-1;

function y=f2(x),             //for-1<=x<=1
        y=(x*(6-2*x^2))/16;
endfunction
b1=-1;
b2=1;
function y=f3(x)
         y=(x*(3-x)^2)/16;     //for 1<=x<=3
endfunction
c1=1;
c2=3;
mx=intg(a1,a2,f1)+intg(b1,b2,f2)+intg(c1,c2,f3);//mean value
disp(mx,"Mean value =");
disp(" Therefore mean value is  zero.");
//Therefore area under PDF curve is  unity
//Hence Therefore mean value is  zero
