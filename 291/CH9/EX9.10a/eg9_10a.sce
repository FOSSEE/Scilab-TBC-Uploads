x1= [679 1420 1349 296 6975 323 4200 633];
x2 = [30.4 34.1 17.2 26.8 29.1 18.7 32.6 32.5];
y = ones(8,1);
y= [11.6 ;16.1; 9.3; 9.1; 8.4; 7.7; 11.3; 8.4];
x = ones(8,3);
for i=1:8
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
    for k=1:8
        B(i,1)=B(i,1)+(pro4(i, k)*y(k, 1));
    end
end
disp(B);
//SSR = y'*y - B'*x'y;
SSR = y';
SSR= SSR*y;
sub = B';
sub = sub*x';
sub= sub*y; 
SSR =SSR - sub;
disp(SSR, "SSr is");
