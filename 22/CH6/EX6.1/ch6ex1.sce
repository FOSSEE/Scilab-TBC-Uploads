n=0:10;
a_n=0.504*2*ones(1,length(n))./(1+16*n.^2);
a_n(1)=0.504
b_n=0.504*8*n./(1+16*n.*n);
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
subplot(2,2,4); plot2d3(n,theta_n,);xtitle('theta_n','n');plot(n,theta_n,'r.')
