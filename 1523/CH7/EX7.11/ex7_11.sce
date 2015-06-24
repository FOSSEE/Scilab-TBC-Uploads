// Graph Theory : example 7.11 :(pg 7.21 & 7.22)
printf("\nAa=");
disp(Aa=[0 -1 1 0 0;0 0 -1 -1 -1;-1 0 0 0 1;1 1 0 1 0]);//Complete incidence matrix
A=[0 -1 1 0 0;0 0 -1 -1 -1;-1 0 0 0 1];//Reduced incidence matrix
printf("\nNumber of possible trees = |A*A^T|");//A^T=A'=transpose of A 
x=(A*A');
disp(x);
det(x);
printf("\n|A*A^T|=%.f",det(x));//No. of possible trees
//Tieset Matrix B
printf("\ntwigs={3,4,5} \nlinks={1,2} \ntieset 1={1,4,5} \ntieset 2={2,3,4}");
printf("\nB=");
disp(B=[1 0 0 -1 1;0 1 1 -1 0]);
//f-cutset Matrix Q
printf("\nf-cutset 3={3,2} \nf-cutset 4={4,2,1} \nf-cutset 5={5,1}");
printf("\nQ=");
disp(Q=[0 -1 1 0 0;1 1 0 1 0;-1 0 0 0 1]);