//Eg-13.12
//pg-552

clear
clc

y(1) = 1;

h = 1;

printf('For h = 1\n')
printf('              x           y\n')

for(i = 1:3)
    x(i) = i;    //since h = 1
    y(i+1) = y(i)/(1+2*h);
    printf('            %f    %f\n',x(i),y(i+1))
end

h = 0.5;
printf('\nFor h = 0.5\n')
printf('              x           y\n')

n = (3.0-0.5)/0.5+1;

for(i = 1:n)
    x(i) = 0.5 + (i-1)*h;    //since h = 0.5
    y(i+1) = y(i)/(1+2*h);
    printf('            %f    %f\n',x(i),y(i+1))
end

printf('Observe that the implicit method is stable for h = 1, whereas the explicit method is not.')