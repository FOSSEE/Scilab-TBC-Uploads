clc;
n1=590; // primary side turns
n2=295; // secondary side turns
V1=230; // voltage source from which h v side was energised during test
io1=0.35; // no load current for when h v side is energised
V2=110; // induced voltage  across open circuited l v winding due energised h v side 
v2=115; // voltage source from which l v side was energised during test
io2=0.72; // no load current for when l v side is energised
v1=226; // induced voltage across open circuited  h v winding due energised l v side
f=50; // frequency of supply;
w1=V1/(sqrt(2)*%pi*50); // Maximum value of flux linkage with h v winding
L1=w1*(1/(sqrt(2)*io1));
printf('self inductance of h v winding i %f H\n',L1);
w2=v2/(sqrt(2)*%pi*50); // Maximum value of flux linkage with l v winding
L2=w2*(1/(sqrt(2)*io2));
printf('self inductance of l v winding i %f H\n',L2);
M=(V2/(sqrt(2)*%pi*f))*(1/(sqrt(2)*io1));
printf('mutual inductance between h v and l v winding is %f H\n',M);
k1=(n1/n2)*(M/L1); // coupling factor for h v side
k2=(n2/n1)*(M/L2); // coupling factor for l v side
k=sqrt(k1*k2); // coefficient of coupling
printf('coupling factor for h v side is %f\n',k1);
printf('coupling factor for l v side is %f\n',k2);
printf('coefficient of coupling is %f\n',k);
