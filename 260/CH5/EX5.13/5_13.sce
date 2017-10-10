//Eg-5.13
//pg-250

clear
clc

A=[0 1.5 1;1.5 0 0.5;1 0.5 0];
iter=1;
imax=100;
sig2=0;
S=sum(A.^2);
T=eye(3,3);

//A(1,1)=A(2,2)=A(3,3),,,so in this case sinalp=cosalp=(1/2)^.5
while sig2~=S&iter<imax
//for i=1,j=2
sigma=sum(diag(A).^2);
cosalp=(1/2)^.5;
sinalp=(1/2)^.5;
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
iter=iter+1;
T=T*U*U1*U2;
end
printf('Note that the eigen values are in a different order from that on the text book and the part B is printed first and then the part A\n')
disp(A)
disp("eigen values")
disp(diag(A3))
disp("eigen vectors are columns of the following matrix")
disp(T)


B=[1 8 7 6;8 7 3 4;7 3 2 1;6 4 1 5];
[v,d]=spec(B);
disp(B)
disp("eigen values")
disp(d)
disp("eigen vectors are columns of the following matrix")
disp(v)


