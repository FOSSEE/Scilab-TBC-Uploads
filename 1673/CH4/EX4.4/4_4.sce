//example 4.4
//linearization of non-linear law
//page 131
clc;clear;close;
x=[1 3 5 7 9];
y=[2.473 6.722 18.274 49.673 135.026];
for i=1:5
    Y(i)=log(y(i));
    x2(i)=x(i)^2;
    xy(i)=x(i)*Y(i);
end
S_x=0,S_y=0,S_x2=0,S_xy=0;
printf('X\t    Y=lny\t      X^2\t     XY\n\n');
for i=1:5
    printf('%d\t    %0.3f\t    %d\t   %0.3f\n',x(i),Y(i),x2(i),xy(i));
    S_x=S_x+x(i);
    S_y=S_y+Y(i);
    S_x2=S_x2+x2(i);
    S_xy=S_xy+xy(i);
end
printf('----------------------------------------------------------------------------------------------------------------------------\n\n')
printf('%d\t   %0.3f\t    %d\t    %0.3f\t\n\n',S_x,S_y,S_x2,S_xy);
A1=((S_x/5)*S_xy-S_x*S_y)/((S_x/5)*S_x2-S_x^2);
A0=(S_y/5)-A1*(S_x/5);
a=exp(A0);
printf('y=%0.3fexp(%0.2fx)',a,A1);