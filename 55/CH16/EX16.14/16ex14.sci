a=[];
a(1)=1;  //initial condition
a(2)=2;  //initial condition
 disp('for recurrence relation a(n)=5*a(n-1)-4*a(n-2)+n^2') //this is a second order recurrence relation with constant coefficients.It is non homogenous because of the n^2
for n=3:4
a(n)=5*a(n-1)-4*a(n-2)+n^2;
mprintf('Value of a(%i) is: %i \n',n,a(n))
end
 
a=[];
a(1)=1;   //initial condition
a(2)=2;   //initial condition
disp('for recurrence relation a(n)=2*a(n-1)*a(n-2)+n^2')  //this recurrence relation is not linear
for n=3:4
a(n)=2*a(n-1)*a(n-2)+n^2;
mprintf('Value of a(%i) is: %i \n',n,a(n))
end
 
a=[];
a(1)=1;    //initial condition
a(2)=2;    //initial condition
disp('for recurrence relation a(n)=n*a(n-1)+3*a(n-2)')   //this is a homogenous linear second order recurrence relation without constant coefficients because the coefficient of a[n-1] is n,not a constant
for n=3:4
a(n)=n*a(n-1)+3*a(n-2);
mprintf('Value of a(%i) is: %i \n',n,a(n))
end

 
a=[];
a(1)=1;      //initial condition
a(2)=2;      //initial condition
a(3)=1;      //initial condition
disp('for recurrence relation a(n)=2*a(n-1)+5*a(n-2)-6*a(n-3)') //this is a homogenous linear third order recurrence relation with constant coefficients.Thus we need three,not two,initial conditions to yield a unique solution of the recurrence relation
for n=4:6
a(n)=2*a(n-1)+5*a(n-2)-6*a(n-3);
mprintf('Value of a(%i) is: %i \n',n,a(n))
end