//Eg-5.12
//pg-242

clear
clc

A=[1 2 3;2 3 5;3 5 5];

//Iteration Number----1

//for i=1,j=2
sigma=sum(diag(A).^2);
S=sum(A.^2);
q=abs(A(1,1)-A(2,2));
p=2*A(1,2)*q/(A(1,1)-A(2,2));
spq=(p^2+q^2)^.5;
cosalp=((1+q/spq)/2)^.5;
sinalp=p/(2*cosalp*spq);
U=[cosalp sinalp 0;sinalp -cosalp 0;0 0 1];

//for i=1,j=3
A1=inv(U)*A*U;

q=abs(A1(1,1)-A1(3,3));
p=2*A1(1,3)*q/(A1(1,1)-A1(3,3));
spq=(p^2+q^2)^.5;
cosalp=((1+q/spq)/2)^.5;
sinalp=p/(2*cosalp*spq);
U1=[cosalp 0 sinalp;0 1 0;sinalp 0 -cosalp];


//for i=2,j=3
A2=inv(U1)*A1*U1;

q=abs(A2(2,2)-A2(3,3));
p=2*A2(2,3)*q/(A2(2,2)-A2(3,3));
spq=(p^2+q^2)^.5;
cosalp=((1+q/spq)/2)^.5;
sinalp=p/(2*cosalp*spq);
U2=[1 0 0 ;0 cosalp sinalp;0 sinalp -cosalp];

A3=inv(U2)*A2*U2;

sig2=sum(diag(A3.^2));
T=U*U1*U2;

//Iteration number ---2

A=A3;
//for i=1,j=2
sigma=sum(diag(A).^2);
S=sum(A.^2);
q=abs(A(1,1)-A(2,2));
p=2*A(1,2)*q/(A(1,1)-A(2,2));
spq=(p^2+q^2)^.5;
cosalp=((1+q/spq)/2)^.5;
sinalp=p/(2*cosalp*spq);
U=[cosalp sinalp 0;sinalp -cosalp 0;0 0 1];

//for i=1,j=3
A1=inv(U)*A*U;

q=abs(A1(1,1)-A1(3,3));
p=2*A1(1,3)*q/(A1(1,1)-A1(3,3));
spq=(p^2+q^2)^.5;
cosalp=((1+q/spq)/2)^.5;
sinalp=p/(2*cosalp*spq);
U1=[cosalp 0 sinalp;0 1 0;sinalp 0 -cosalp];


//for i=2,j=3
A2=inv(U1)*A1*U1;

q=abs(A2(2,2)-A2(3,3));
p=2*A2(2,3)*q/(A2(2,2)-A2(3,3));
spq=(p^2+q^2)^.5;
cosalp=((1+q/spq)/2)^.5;
sinalp=p/(2*cosalp*spq);
U2=[1 0 0 ;0 cosalp sinalp;0 sinalp -cosalp];

A3=inv(U2)*A2*U2;
T6=T*U*U1*U2;

sig3=sum(diag(A3.^2));

printf('The values of the sigmas are\n    sigma1 = %f\n    sigma2 = %f\n',sig2,sig3)
T = A.^2;
Sumofsqrs = sum(T);
printf('\nThe sum of squares of the elements of the given original matrix = %f\n',Sumofsqrs)
printf('\nSum of squares of all elements is equal to sigma2\n')
printf('\nThe eigen values are as follows\n')
disp(diag(A3))
printf('\nThe corresponding eigen vectors are columns of the following matrix\n')
disp(T6)
for(i = 1:3)
    eigenv(i) = A3(i,i);
end

printf('\n\nThe checklist given at the end of the problem \n')
printf('\n1. The sum of eigen values = %f\n   The trace of the original matrix = %f\n',sum(eigenv),trace(A))
printf('\n2. The product of eigenvalues = %f\n   The determinant of the original matrix = %f\n',eigenv(1)*eigenv(2)*eigenv(3),det(A))

    dot(1) = sum(T6(:,1).*T6(:,2));
    dot(2) = sum(T6(:,1).*T6(:,3));
    dot(3) = sum(T6(:,3).*T6(:,2));
printf('\n3. The dot product of eigen vectors 1&2 = %f\n   The dot product of eigen vectors 1&3 = %f\n   The dot product of eigen vectors 3&2 = %f\n=> The eigen vecotrs are orthonormal\n',dot(1),dot(2),dot(3))