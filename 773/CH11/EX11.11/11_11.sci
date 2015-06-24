//value//
n=3;
disp(n,"no of poles=")
m=0;
disp(m,"no of poles=")
q=0;
O=((2*q)+1)/(n-m)*180;
disp(O,"q=")
q=1;
O=((2*q)+1)/(n-m)*180;
disp(O,"q=")
q=2;
O=((2*q)+1)/(n-m)*180;
disp(O,"q=")

printf("Centroid=((sum of all real part of poles of G(s)H(s))-(sum of all real part of zeros of G(s)H(s))/(n-m) \n")
C=((0-1-1)-(-0))/3;
disp(C,"centroid=")
