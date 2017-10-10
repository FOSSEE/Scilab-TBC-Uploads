// Exa 8.2
// To calculate the output of the encoder.

clc;
clear all;

K=4; //constraint length
r=1/2; //code rate(n/k)
x=poly(0,"x");//Defining x as a ploynomial variable
G1=1+x^2+x^3;
G2=1+x+x^2+x^3;
in=[1 0 1 1 1];//input(first bit first)

//solution
//with reference to Fig 8.9 on page no 239
g1=[1 0 1 1]; //converting from G1 polynomial to bit form
g2=[1 1 1 1];////converting from G2 polynomial to bit form
x1=round(convol(g1,in));
x2=round(convol(g2,in));
V1=modulo(x1,2);
V2=modulo(x2,2);
disp("Multiplexing the V1 and V2 to get required output sequence as ");
 a=5;
for i= 1:5
   printf('%d%d',V2(a),V1(a));
   a=a-1;
  
end

