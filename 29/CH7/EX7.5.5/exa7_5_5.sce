//caption:stability_using_Routh-hurwitz_criterion
//example 7.5.5
//page 204
s=%s;
A=s^6+s^5+5*s^4+3*s^3+2*s^2-4*s-8;
b=coeff(A)
n=length(b)
routh=[b([7,5,3,1]);b([6,4,2]),0];

c=[routh(1,1),routh(1,3);routh(2,1),routh(2,3)]
d=[routh(1,1),routh(1,4);routh(2,1),routh(2,4)]
routh=[routh;-det(routh(1:2,1:2))/routh(2,1),-det(c)/routh(2,1),-det(d)/routh(2,1),0];
routh1=routh;
e=[routh(2,1),routh(2,2);routh(3,1),routh(3,2)]
f=[routh(2,1),routh(2,3);routh(3,1),routh(3,3)]
routh=[routh;-det(e)/routh(3,1),-det(f)/routh(3,1),0,0];
disp("since all elements of fourth row are zero, so we make auxiliary equation")
A=sym('2*s^4+6*s^2-8')
B=diff(A,s)
routh=[routh1;8,12,0,0]
g=[routh(3,1),routh(3,3);routh(4,1),routh(4,3)]
routh=[routh;-det(routh(3:4,1:2))/routh(4,1),-det(g)/routh(4,1),0,0];
routh=[routh;-det(routh(4:5,1:2))/routh(5,1),0,0,0];
routh=[routh;-det(routh(5:6,1:2))/routh(6,1),0,0,0]
disp(routh,"routh table:")
c=0;
r=1;
for(i=1:n)
  if(routh(i,1)<0)
    c=c+1;
    if(i==n & routh(n,1)<0)
      r=r;
    else
      r=r+1;
    end
  end
end
if(c>=1)
  printf("system is unstable\n")
else("system is stable " )
end
mprintf('no. of roots with positive real parts=%d',r);

