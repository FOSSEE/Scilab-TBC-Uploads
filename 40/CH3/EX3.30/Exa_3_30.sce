//periodic convolution by circulant matrix
x=[1 0 2];
h=[1;2;3];
//generation of circulant matrix
c(1,:)=x;
for i=2:length(x)
    c(i,:)=[x(length(x):length(x)-i),x(1:length(x)-i)]
end
c'