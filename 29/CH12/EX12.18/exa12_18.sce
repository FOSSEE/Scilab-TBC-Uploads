//caption:stability_using_Routh-hurwitz_criterion
//example 12.18
//page 531
s=%s;
A=s^5+s^4+4*s^3+4*s^2+s+1;
b=coeff(A)
n=length(b)
routh=[b([6 4 2]);b([5 3 1])]
routh1=routh;
c=[routh(1,1),routh(1,3);routh(2,1),routh(2,3)]
routh=[routh;-det(routh(1:2,1:2))/routh(2,1),-det(c)/routh(2,1),0]
disp("since all elements of third row are zero, so we make auxiliary equation")
A=sym('s^4+4*s^2+1')//auxiliary equation
B=diff(A,s)
routh=[routh1;4,8,0]
d=[routh(2,1),routh(2,3);routh(3,1),routh(3,3)]
routh=[routh;-det(routh(2:3,1:2))/routh(3,1),-det(d)/routh(3,1),0]
routh2=routh
routh=[routh;-det(routh(3:4,1:2))/routh(4,1),0,0]
routh=[routh;-det(routh(4:5,1:2))/routh(5,1),0,0];
disp(routh,"routh=")
disp("stability is examined as below . since roots of auxiliary eq are also roots of characterstics eq")
A=s^4+4*s^2+1
b=roots(A)
disp("since the equation has non repeating  roots on s plane imaginary axis.hence system  are unstable" )


