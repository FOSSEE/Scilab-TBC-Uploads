//Example 5.6
clear;
clc ;
close ;
x = [1,2,2,1,1,2,1,1];
w=(sqrt(2)-%i*sqrt(2))/2;

//split input into four 2-point sequences
a=[x(1) x(5)]
b=[x(3) x(7)]
c=[x(2) x(6)] 
d=[x(4) x(8)]

//1st iteration======2 point DFT 
y1(1)=a(1)+a(2);
y1(2)=a(1)-a(2);
y1(3)=[b(1)+b(2)]*(w^0);
y1(4)=[b(1)-b(2)]*(w^2);
y1(5)=c(1)+c(2);
y1(6)=c(1)-c(2);
y1(7)=[d(1)+d(2)]*(w^0);
y1(8)=[d(1)-d(2)]*(w^2);

//2nd iteration=======4 point DFT
for i=1:2
    h2(i)=y1(i)+y1(i+2);
    g2(i)=y1(i)-y1(i+2);
    h3(i)=[y1(4+i)+y1(6+i)]*(w^(i-1));
    g3(i)=[y1(4+i)-y1(6+i)]*(w^(i+1));
end

//3rd iteration=======8 point DFT
for i=1:2
    X(i)=h2(i)+h3(i);
    X(i+2)=g2(i)+g3(i);
    X(i+4)=h2(i)-h3(i);
    X(i+6)=g2(i)-g3(i);
end

//Display sequence X[k] in command window
disp(X,"X[k]=");
