//Example 5.5

clear;
clc ;
close ;
x = [1,2,2,1,1,2,1,1];
a=[x(1:4)];
b=[x(5:8)];
w=(sqrt(2)-%i*sqrt(2))/2;

//1st iteration=====8 point DFT
for i=1:4
    h(i)=a(i)+b(i);
    g(i)=[a(i)-b(i)]*(w^(i-1))
end

//2nd iteration=====4 point DFT
for i=1:2
    h1(i)=h(i)+h(i+2);
    g1(i)=[h(i)-h(i+2)]*(w^(2*(i-1)));
    h2(i)=g(i)+g(i+2);
    g2(i)=[g(i)-g(i+2)]*(w^(2*(i-1)));
end

//3rd iteration=====2 point DFT
y=[zeros(1:8)];
y(1)=h1(1)+h1(2);
y(2)=[h1(1)-h1(2)]*(w^0);
y(3)=g1(1)+g1(2);
y(4)=[g1(1)-g1(2)]*(w^0);
y(5)=h2(1)+h2(2);
y(6)=[h2(1)-h2(2)]*(w^0);
y(7)=g2(1)+g2(2);
y(8)=[g2(1)-g2(2)]*(w^0);

//Bit reversed output
X=y;
X(2)=y(5);
X(5)=y(2);
X(4)=y(7);
X(7)=y(4);
//Display sequence X[k] in command window
disp(X,"X[k]=");

