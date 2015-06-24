//Example 13.2
//Calculation of x-coordinate of Minimum Point 
//Page no. 422
clc;close;clear;

for i=1:7
    for j=1:6
        z(i,j)=0
    end
end
h=0.2
printf('    x       y           d          d2        d3         d4\n')
printf('--------------------------------------------------------------')
for i=1:7
    z(i,1)=i/5;
end
z(1,2)=2.10022
z(2,2)=1.98730
z(3,2)=1.90940
z(4,2)=1.86672
z(5,2)=1.85937
z(6,2)=1.88755
z(7,2)=1.95147
for i=3:6
    for j=1:9-i
        z(j,i)=z(j+1,i-1)-z(j,i-1)
    end
end
disp(z)

s=poly(0,'s')
p=z(5,2);k=4;
for i=3:5
    r=1;
    for j=1:i-2
        r=r*(s+(j-1))
    end
    r=r*z(k,i)/factorial(j);
    k=k-1;
    p=p+r;
    
end
disp(p)
s=(-z(4,3)+z(3,4)/2)/z(3,4)
disp(s,'s=')
x=z(5,1)+s*h
disp(x,'x=')