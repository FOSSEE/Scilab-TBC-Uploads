clear;
clc;
printf("\n Example 7.6");
A=0.6*0.6*%pi;       //in m^2
rate=1.25*10^-4;     // in m^3/s

v_w=0.2/(3*10^3);
v_f=10^-3-v_w;

v=v_w/v_f;
v_rate=rate*v;
w=360*0.2;

t=v_rate*w/A;
printf("\nThickness of cake produced is : %.1f mm",t/10^-4);
K = poly([0],'K');
K1 = roots((1.25*10^(-4)*360)^2-K*(6.5*10^(4)*(0.36*(%pi))^(2)*72));
printf("\n The value of K is %.2f*10^(-10)",K1*10^(10));

//Filter press
//Using a filter press with n frames of thickness b m the total time, for one complete cycle of the press =(tf+120n+240),where tf is the time during which filtration is occurring
//overall rate of filtration = Vf/(tf + 120n + 240)

// Vf = 0.3^(2)*n*b/0.143
//tf = 2.064*10^5 b^2

b = poly([0],'b');
b1 = roots(b^2 - 0.0458*b - 0.001162);
printf("\n The thickness is %.4f m",b1(1));

function[n]=number_of_plates()
    
    n = (0.030 + 25.8*b1(1)^2)/(0.629*b1(1)-0.015);
    funcprot(0);
endfunction
n = number_of_plates();
printf("\n The minimum number of plates required is %d",ceil(n));

d = poly([0],'d');
d1 = roots(ceil(n)*(0.629*d-0.015)-0.030-25.8*d^2);
printf("\n The sizes of frames which will give exactly the required rate of filtration when six are used are %f mm",d1*10^3);
printf("\n\n\n  Thus any frame thickness between 47 and 99 mm will be satisfactory. In practice,50 mm (2 in) frames would probably be used.")






















