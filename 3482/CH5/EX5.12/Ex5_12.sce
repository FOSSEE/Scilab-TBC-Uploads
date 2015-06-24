clc;

//page 264
l=4.5; // in in
b=2;//in
h=.5;//in
a_I=l*b*h
a_II=((1/4)*%pi*b^2*h)
a_III=-%pi*(h^2)*h
a_IV=-%pi*(h^2)*h
V=[a_I a_II a_III a_IV]
//disp(V)

x=[.25,1.3488,.25,.25];//in, x components of centroids of part I,II , III and IV respectively
y=[-1,-0.8488,-1,-1];//in, y components of centroids of part I,II , III and IV respectively
z=[2.25,0.25,3.5,1.5];//in, z components of centroids of part I,II , III and IV respectively


for(i=1:4)
    temp=0
    sum_xV=0
    sum_xV=V(i)*x(i)
   y(i)=[sum_xV]
end
x=sum(y)
printf("The sum of x*V=%f  in^4 \n",x)

for(i=1:4)
    temp=0
    sum_zV=0
    sum_zV=V(i)*z(i)
   y(i)=[sum_zV]
end
z=sum(y)
printf("The sum of z*V=%f  in^4 \n",z)

for(i=1:4)
    temp=0
    sum_yV=0
    sum_yV=V(i)*y(i)
   y(i)=[sum_yV]
   disp(y(i))
end
s=sum(y)
printf("The sum of y*V=%f  in^4 \n",s)












































