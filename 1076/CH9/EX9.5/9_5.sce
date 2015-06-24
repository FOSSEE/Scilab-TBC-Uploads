clear
clc

Y=[
.7-%i*3     -.2+%i   -.5+2*%i          %inf
%inf               %inf    -.3+2*%i       -.5+3*%i
%inf               %inf        %inf          -1+4*%i
%inf               %inf        %inf              %inf
]
disp("inf shows that this value is to be found ")
disp(Y,"given")

Y(1,4)=round(Y(1,1)+Y(1,3)+Y(1,2))
Y(4,4)=0-Y(1,4)-Y(2,4)-Y(3,4)
Y(4,1)=Y(1,4)
Y(2,1)=Y(1,2)
Y(3,2)=Y(2,3)
Y(3,1)=Y(1,3)
Y(4,2)=Y(2,4)
Y(4,3)=Y(3,4)
Y(2,2)=0-Y(2,1)-Y(2,4)-Y(2,3)
Y(3,3)=0-Y(3,1)-Y(3,4)-Y(3,2)



disp(Y,"completed")
