clear;
clc;
a=2.5*10^-2, b=1*10^-2,c=0, Ur=1,Er=4,C=3*10^8;
fc=0,m=0,n=0;
while(fc*10^-9<15.1)
fc=(C/(4*a))*sqrt(m^2 + (a*n/b)^2);
if ((fc*10^-9) < 15.1) then
n=n+1;
else disp(n-1,'Max value of n is ='); end
end 
fc=0,m=0,n=0;
while(fc*10^-9<15.1)
fc=(C/(4*a))*sqrt(m^2 + (a*n/b)^2);
if ((fc*10^-9) < 15.1) then
m=m+1;
else disp(m-1,'Max value of m is ='); end
end 
function[p]= modes(m,n);
p=(C/(4*a))*sqrt(m^2 + (a*n/b)^2);
if ((p*10^-9) < 15.1) then
disp([m n],'Transmission mode is possible'); else p=0;end
endfunction
for i=1:1:5, for j=1:1:2,modes(i,j);end;
end
    





