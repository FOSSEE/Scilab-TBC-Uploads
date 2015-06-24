//example 10.13
clc;
clear
//pre=input("Enter the number where the counter is preset");
pre = 1001; // given preset value  
q=1;
b=0;
f=0;                
a=pre;
while(a>0) //converting to decimal 
    r=modulo(a,10);
    b(1,q)=r;
    a=a/10;
    a=floor(a);
    q=q+1;
end
for m=1:q-1
     c=m-1
    f = f + b(1,m)*(2^c);
end
disp("The counter will count down to 15 , Then preset back to %d, The resulting state diagram is shown below");
for k=1:3
for i=9:-1:0  // this will print the states 
printf('%d  ',i);
end;
printf('15  ');

end;