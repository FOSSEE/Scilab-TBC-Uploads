M=8;    //number of male professors teaching calculus
F=5;    //number of female professors teaching calculus
T=M+F ;
disp(T,'number of ways a student can choose a calculus professor')

E=[2,3,5,7];   //event of choosing a prime number less than 10
F=[2,4,6,8];   //event of choosing an even number less than 10
G=intersect(E,F);  //event of getting an even and prime number 
H=length(E)+length(F)-length(G);  
disp(H,'event of getting an even or a prime number')

E=[11,13,17,19]; //event of choosing a prime number between 10 and 20
F=[12,14,16,18];  //event of choosing an even number between 10 and 20
G=union(E,F);    //event of choosing a number which is prime or even
k=length(G); 
disp(k,'number of ways of choosing a number which is prime or even')