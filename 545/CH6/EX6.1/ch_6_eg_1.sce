//given convective diffusive eqn--> -u*(dc/dx)+D*(d2C/dx2)=0
C_ini=0             //at x=0
C_end=1             //at x=1
clc
disp("the soln of eg 6.1");

//using central difference method for both diffusion and convective term 
//-u*(C(i+1)-C(i-1))/(2*delta_x) + D*(C(i+1)+C(i-1)-2*C(i))/delta_x^2 = 0
delta_x=1/50
//on solving the given eqns and by using the given boundary eqns we have
Pe=50                              //given 
Pe_local=50*delta_x                //u/D=50 as l=1
alpha=Pe_local-2                   //co-eff of C(i+1)
Beta=Pe_local+2                    //co-eff of C(i-1)
//multipling with -2*delta_x^2/D we get
//-(Pe_local+2)*C(i-1) + 4*C(i) + (Pe_local-2)*C(i+1)=0
//solving eqns using TDMA method
for i=2:49, a(i)=-Beta            //sub diagonal assignment
end 
for j=1:49, b(j)=4,           //main diagonal assignment
end
for k=1:48, c(k)=alpha;            //super diagonal assignment
end
d(1)=Beta*C_ini, d(49)=-alpha*C_end
for l=2:48, d(l)=0;
end                     //given values assignment
i=1;
n=49;
beta1(i)=b(i);                //initial b is equal to beta since a1=0
gamma1(i)=d(i)/beta1(i);      //since c7=0
m=i+1;
for j=m:n, beta1(j)=b(j)-a(j)*c(j-1)/beta1(j-1);
gamma1(j)=(d(j)-a(j)*gamma1(j-1))/beta1(j);
end
x(n)=gamma1(n);               //since c7=0
n1=n-i;
for k=1:n1, j=n-k; x(j)=gamma1(j)-c(j)*x(j+1)/beta1(j);
end
disp("the values of conc. using CDS method for x=.84 to 1 are")
for i=42:49,disp(x(i)); 
end
//part (ii) using CDS and UDS method
//multipling with -delta_x^2/D we get
//-(Pe_local+1)*C(i-1) + (Pe_local+2)*C(i)-C(i+1)=0
BEta=Pe_local+2
Gamma=Pe_local+1
for i=2:49, a(i)=-Gamma            //sub diagonal assignment
end 
for j=1:49, b(j)=BEta,           //main diagonal assignment
end
for k=1:48, c(k)=-1;            //super diagonal assignment
end
d(1)=Gamma*C_ini, d(49)=C_end
for l=2:48, d(l)=0;
end                     //given values assignment
i=1;
n=49;
beta1(i)=b(i);                //initial b is equal to beta since a1=0
gamma1(i)=d(i)/beta1(i);      //since c7=0
m=i+1;
for j=m:n, beta1(j)=b(j)-a(j)*c(j-1)/beta1(j-1);
gamma1(j)=(d(j)-a(j)*gamma1(j-1))/beta1(j);
end
x(n)=gamma1(n);               //since c7=0
n1=n-i;
for k=1:n1, j=n-k; x(j)=gamma1(j)-c(j)*x(j+1)/beta1(j);
end
disp("the values of conc. using CDS/UDS method for x=.84 to 1 are")
for i=42:49,disp(x(i)); 
end
disp("the analytical soln is");
for i=42:49;
     C_an(i)=C_ini+((exp(Pe*.02*i)-1)*(C_end-C_ini)/(exp(Pe)-1)); 
    disp(C_an(i));
    end