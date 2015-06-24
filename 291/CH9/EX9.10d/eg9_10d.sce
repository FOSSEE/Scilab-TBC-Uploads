y=[79.2 ;64.0; 55.7; 56.3; 58.6; 84.3; 70.4; 61.3; 51.3; 49.8];
x1 = [0.02 0.03 0.03 0.04 0.10 0.15 0.15 0.09 0.13 0.09];
x2 = [1.05 1.20 1.25 1.30 1.30 1.00 1.10 1.20 1.40 1.40];
tvalue= 2.365;
x = ones(10,3);
for i=1:10
    x(i,2)= x1(i);
    x(i,3)= x2(i);
end

pro1 = x';
//disp(pro1);

pro2= pro1*x;
//disp(pro2);
pro3 = inv(pro2);
//disp(pro3);
pro4 = pro3*pro1;
pro5 = pro4*y;
//disp(pro4);
//disp(y);
B= ones(3,1);
for i=1:3
    B(i,1)= 0;
    for k=1:10
        B(i,1)=B(i,1)+(pro4(i, k)*y(k, 1));
    end
end
//disp(B);
//SSR = y'*y - B'*x'y;
SSR = y';
SSR= SSR*y;
sub = B';
sub = sub*x';
sub= sub*y; 
SSR =SSR - sub;
disp(SSR, "SSr is");
smallx = [1, 0.15, 1.15];
product = smallx * B;
//disp(product); 
n = 10;
k=2;
val= sqrt(SSR/(n-k-1));
//disp(val);

pro5 = smallx * pro3;
pro6 = pro5* smallx';
pro7 = val*sqrt(pro6)*tvalue;
//disp(pro7)
up = product + pro7;
low = product - pro7; 
disp(" 95% confidence interval is from ");
disp(up, "to", low);