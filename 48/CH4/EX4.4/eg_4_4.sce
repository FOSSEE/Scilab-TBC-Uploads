clc;
n=10;
//coverting decimal numbers into excess 3 values
for i=0:n-1
    c(i+1,1)=dec21bin(i+3);
end
a=c;
b=zeros(10,4);
//placing excess 3 outputs in matrix for convenience
for i=1:n
    j=4;
       while(a(i,1)>=1)
          b(i,j)=round(modulo(a(i,1),10));
          a(i,1)=a(i,1)/10;
          j=j-1;
       end
end
//dont care is represented by a 2 since scilab doesnt allow a matrix to contain string and a number.
for i=n+1:16
    b(i,:)=[2 2 2 2];
end
//map of each output variable
z=[b(1,1) b(5,1) b(13,1) b(9,1);b(2,1) b(6,1) b(14,1) b(10,1);
   b(3,1) b(7,1) b(15,1) b(11,1);b(4,1) b(8,1) b(16,1) b(12,1)];
y=[b(1,2) b(5,2) b(13,2) b(9,2);b(2,2) b(6,2) b(14,2) b(10,2);
   b(3,2) b(7,2) b(15,2) b(11,2);b(4,2) b(8,2) b(16,2) b(12,2)];
w=[b(1,3) b(5,3) b(13,3) b(9,3);b(2,3) b(6,3) b(14,3) b(10,3);
   b(3,3) b(7,3) b(15,3) b(11,3);b(4,3) b(8,3) b(16,3) b(12,3)];
x=[b(1,4) b(5,4) b(13,4) b(9,4);b(2,4) b(6,4) b(14,4) b(10,4);
   b(3,4) b(7,4) b(15,4) b(11,4);b(4,4) b(8,4) b(16,4) b(12,4)];
donkmap(w,1);
donkmap(x,2);
donkmap(y,3);
donkmap(z,4);