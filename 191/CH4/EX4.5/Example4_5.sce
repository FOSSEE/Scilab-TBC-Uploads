//Threshold serial Jacobi Method
//taking threshold values 0.5 and 0.05
clc;
clear;
close();
format('v',9);
A = [3 0.4 5;0.4 4 0.1;5 0.1 -2];
//for first cycle |0.4|<0.5 trasnformation is omitted
//|5|>0.5 a zero is created at (1,3)
//by taking the rotation matrix P1=[c 0 s; 0 1 0;-s 0 c]; where c=cos and s=sin
//O is theta
p=1;q=3;
O = 0.5*atan(2*A(p,q)/(A(q,q)-A(p,p)));
P1 = [cos(O) 0 sin(O);0 1 0;-sin(O) 0 cos(O)];
A1 = A;
A2 = inv(P1)*A*P1;
//as all the off-diagonals < 0.5 the first cycle is complete
disp(diag(A2),'The eigen values for case 1 : ')

//second cycle for 0.05
count =0;
EV = P1;
for i=1:3
    for j=i+1:3
        if A2(i,j)>0.05 then
            p=i;q=j;
            O = 0.5*atan(2*A2(p,q)/(A2(q,q)-A2(p,p)));
            c = cos(O);
            s = sin(O);
            P = eye(3,3);
            P(p,p)=c;
            P(q,q)=c;
            P(p,q)=s;
            P(q,p)=-s;
            A = inv(P)*A2*P;
            disp(EV,'value of P*')
            EV = EV * P;
            count = count+1;
        end
    end
end
//eigen values are the diagonal elements of A and the column of P gives eigen vectors
disp(diag(A),'Eigen values : ')
disp(EV,'Correspoding eigen vectors : ')