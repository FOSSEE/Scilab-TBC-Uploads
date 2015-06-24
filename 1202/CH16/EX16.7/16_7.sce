clear
clc

//Example 16.7
disp('Example 16.7')


X=[0.48 0.9 -0.006;0.52 0.95 0.008; 0.90 -0.95 0.020];
[U,S,V]=svd(X)

RGA=X.*([inv(X)]')  //Eqn 16-36

//Condition no. of X
CN=max(diag(S))/min(diag(S))

//Note that condition no. can also be found with command cond(X)

// The RGA given in the book is wrong! Eqn 16-73 is wrong.
mprintf('\n The RGA given in the book is wrong! Eqn 16-73 is wrong.\n')
disp(RGA,'RGA=')

X1=X(1:2,1:2);
X2=X(1:2,[1 3]);
X3=X(1:2,2:3);

X4=X([1 3],1:2);
X5=X([1 3],[1 3]);
X6=X([1 3],2:3);

X7=X([2 3],1:2);
X8=X([2 3],[1 3]);
X9=X([2 3],2:3);

lamda1=max(X1.*inv(X1'));
lamda2=max(X2.*inv(X2'));
lamda3=max(X3.*inv(X3'));
lamda4=max(X4.*inv(X4'));
lamda5=max(X5.*inv(X5'));
lamda6=max(X6.*inv(X6'));
lamda7=max(X7.*inv(X7'));
lamda8=max(X8.*inv(X8'));
lamda9=max(X9.*inv(X9'));


mprintf('\n Pairing no.             CN        lambda\n')
mprintf('\n 1             %f        %f',cond(X1),lamda1)
mprintf('\n 2             %f        %f',cond(X2),lamda2)
mprintf('\n 3             %f        %f',cond(X3),lamda3)
mprintf('\n 4             %f        %f',cond(X4),lamda4)
mprintf('\n 5             %f        %f',cond(X5),lamda5)
mprintf('\n 6             %f        %f',cond(X6),lamda6)
mprintf('\n 7             %f        %f',cond(X7),lamda7)
mprintf('\n 8             %f        %f',cond(X8),lamda8)
mprintf('\n 9             %f        %f',cond(X9),lamda9)


