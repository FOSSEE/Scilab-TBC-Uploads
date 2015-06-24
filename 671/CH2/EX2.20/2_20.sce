///////////////////Part 1

//Nodal Method
v1=(8/5+16/10)/(1/5+1/2+1/10)
disp(v1)
i5=(8-v1)/5000
disp(i5)


//////////////////Part2

//Mesh Method

A=[7,-2;-2,12]
I=inv(A)*[8;-16]/1000
disp(I)

v1=2*1000*(I(1)-I(2))
disp(v1)