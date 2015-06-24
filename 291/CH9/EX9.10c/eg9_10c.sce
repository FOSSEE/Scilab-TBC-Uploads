x1 = [44 33 33 32 34 31 33 30 34 34 33 36 33 34 37];
x2= [1.3 2.2 2.2 2.6 2.0 1.8 2.2 3.6 1.6 1.5 2.2 1.7 2.2 1.3 2.6];
x3 = [250 115 75 85 100 75 85 75 225 250 255 175 75 85 90];
x4= [0.63 0.59 0.56 0.55 0.54 0.59 0.56 0.46 0.63 0.60 0.63 0.58 0.55 0.57 0.62 ];
y = [18.1; 19.6; 16.6; 16.4; 16.9 ;17.0; 20.0; 16.6; 16.2; 18.5 ; 18.7; 19.4; 17.6; 18.3; 18.8];
n =length(x1);
x= ones(15, 5);
for i=1:15
    x(i,2)= x1(i);
    x(i,3)= x2(i);
    x(i,4)= x3(i);
    x(i,5)= x4(i);
end
pro1 = x';
//disp(pro1);
pro2= pro1*x;
//disp(pro2);
pro3 = inv(pro2);
//disp(pro3);
pro4 = pro3*pro1;
pro5 = pro4*y;

for i=1:5
    B(i,1)= 0;
    for k=1:15
        B(i,1)=B(i,1)+(pro4(i, k)*y(k, 1));
    end
end
SSR = y';
SSR= SSR*y;
sub = B';
sub = sub*x';
sub= sub*y; 
SSR =SSR - sub;
//disp(SSR);
//disp(B(2))
xxinv = 0.379;
k= 4;
ts = sqrt((n-k-2)/SSR)*B(2)/0.616;
pvalue = 2*(1- cdft("PQ",ts, n-k-2 ));
disp(pvalue, "The p-value is")

The SSR calculated by scilab is 19.34 whereas the textbook gives the value as 19.26 , thus the 
difference in the final answer.
