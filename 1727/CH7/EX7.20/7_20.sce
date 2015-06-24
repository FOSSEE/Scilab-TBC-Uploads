clc
//Initialization of variables
h=[1 2 1.9 1.96]
z1=10 //m
z2=5 //m
z3=7.5 //m
f=0.04 
l1=100 //m
l2=50 //m
l3=70 //m
d1=0.1 //m
d2=0.075 //m
d3=0.06 //m
g=9.81 //m/s^2
//calculations
Q1=sqrt(d1^5 *(%pi/4)^2 *2*g/(f*l1)) .*sqrt(z1-h)
Q2=sqrt(d2^5 *(%pi/4)^2 *2*g/(f*l2)) .*sqrt(h+z2)
Q3=sqrt(d3^5 *(%pi/4)^2 *2*g/(f*l3)) .*sqrt(h+z3)
len=length(h)
for i=1:len
    Q=Q2(i)+Q3(i)
    if (Q1(i) == Q) then
        break;
    end
end
printf("height h = %.2f m",h(i))
printf("\nDischarge in BC Q2 = %.2f lps",Q2(i)*1000)
printf("\nDischarge in BD Q3 = %.2f lps",Q3(i)*1000)
