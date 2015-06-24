//Example 8.9, page no-512
clear
clc
w=100
fi=-atan(0.1*w)-atan(0.5*w)
A=1/(sqrt(1+(0.1*w)^2)*(sqrt(1+(0.5*w)^2)))
A=1*1000/ceil(1000*A)
err=(1-1/A)*100
printf("A=K/%d\n%% error = %.1f%%\nfi=%.2f°",A,err,fi*180/%pi)
