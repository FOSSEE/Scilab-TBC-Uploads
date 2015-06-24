n=0:10;

for n=0:10
     //if(n%2==0)
       //  a_n=0;
     //else 
         if (n==4*n-3)
             a_n=2/(%pi.*n);
         else if (n==4*n-1)
                 a_n=-2/(%pi.*n);
             end end end
             
b_n=zeros(1,length(n));
size(n)
size(a_n)
size(b_n)
disp(b_n(1))
C_n=sqrt(a_n.^2+(b_n).^2);
theta_n(1)=0; theta_n=atan(-b_n,a_n);
//n=[0,n];
clf;
size(n)
subplot(2,2,1); plot2d3(n,a_n);xtitle('a_n','n');plot(n,a_n,'ro');
subplot(2,2,2); plot2d3(n,b_n);xtitle('b_n','n');plot(n,b_n,'r.');
subplot(2,2,3); plot2d3(n,C_n);xtitle('C_n','n');plot(n,C_n,'ro');
subplot(2,2,4); plot2d3(n,theta_n,);xtitle('theta_n','n');plot(n,theta_n,'r.');
