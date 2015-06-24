//Example 15.27
//First order ODE
//Page no. 558
clc;clear;close;

deff('y=f1(x,y1,y2)','y=y1*y2+x')
deff('y=f2(x,y1,y2)','y=y1-x')
h=0.2;x=0;y1=0;y2=1;
//heun method
printf('Heun Method:\n\n x\ty1\ty2\n-------------------------\n')
Y=[y1;y2]
for i=1:8
    
    F=[f1(x,Y(1),Y(2));f2(x,Y(1),Y(2))]
    Y1=Y+h*F
    x=x+h;
    F1=[f1(x,Y1(1),Y1(2));f2(x,Y1(1),Y1(2))]
    Y=Y+(h/2)*(F+F1)
    printf(' %g\t%.3f\t%.3f\n',x-h,Y(1),Y(2))
    
end

//classical runge kutta method
printf('\n\n\nClassical Runge Kutta Method:\n\n n\tx\tYn\tK1\tK2\tK3\tK4\tY(n+1)\n-----------------------------------------------------------------\n')
Y=[y1;y2];x=0;
for i=1:6
    K1=h*[f1(x,Y(1),Y(2));f2(x,Y(1),Y(2))]
    K2=h*[f1(x+h/2,Y(1)+K1(1)/2,Y(2)+K1(2)/2);f2(x+h/2,Y(1)+K1(1)/2,Y(2)+K1(2)/2)]
    K3=h*[f1(x+h/2,Y(1)+K2(1)/2,Y(2)+K2(2)/2);f2(x+h/2,Y(1)+K2(1)/2,Y(2)+K2(2)/2)]
    K4=h*[f1(x+h,Y(1)+K3(1),Y(2)+K3(2));f2(x+h,Y(1)+K3(1),Y(2)+K3(2))]
    Y1=Y+(K1+2*K2+2*K3+K4)/6
    printf(' %i\t%.2f\t%.3f\t%.3f\t%.3f\t%.3f\t%.3f\t%.3f\n\t\t%.3f\t%.3f\t%.3f\t%.3f\t%.3f\t%.3f\n---------------------------------------------------------------\n',i-1,x,Y(1),K1(1),K2(1),K3(1),K4(1),Y1(1),Y(2),K1(2),K2(2),K3(2),K4(2),Y1(2))
    Y=Y1;
    x=x+h
end