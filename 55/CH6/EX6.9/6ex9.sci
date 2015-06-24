//each solution  to the equation can be viewed as a combination of objects
r=18;  //number of objects 
M=3;   //kinds of object
m=factorial(r+(M-1))/(factorial(r+(M-1)-(M-1))*factorial(M-1));
disp(m,'number of non negative integer solutions of the given equation x+y+z=18')