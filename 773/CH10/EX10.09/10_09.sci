//equation//
ieee(2);
s=%s;
m=s^5+s^4+3*s^3+3*s^2+4*s+8
r=coeff(m);  //Extracts the coefficient of the polynomial
n=length(r); 
routh=[r([6,4,2]);r([5,3,1])]
syms eps;
routh=[routh;eps,-det(routh(1:2,2:3))/routh(2,2),0];
routh=[routh;-det(routh(2:3,1:2))/routh(3,1),-det(routh(2:3,2:3))/routh(3,2),0];
routh=[routh;-det(routh(3:4,1:2))/routh(4,1),-det(routh(3:4,2:3))/routh(4,2),0];
routh=[routh;-det(routh(4:5,1:2))/routh(5,1),0,0];
disp(routh,"routh=") 
//To check the stability
routh(4,1)=limit(routh(4,1),eps,0); //Putting the value of eps=0 in routh(4,1)
disp(routh(4,1),"routh(4,1)=")
routh(5,1)= limit(routh(5,1),eps,0); //Putting the value of eps=0 in routh(5,1)
disp(routh(5,1),"routh(5,1)=')
routh
printf("There are two sign changes of first column,hence the system is unstable \n")

