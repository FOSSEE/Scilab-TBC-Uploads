//root locus
s=%s
sys=syslin('c',(s+1)/(s*(s+4)*(s^2+2*s+2)))
clf
evans(sys)
n=4;
disp(n,"no of poles=")
m=1;
disp(m,"no of poles=")
//angle of asymptotes
printf("angle of asymptotes of RL")
for i=0:(n-m-1)
    O=((2*i)+1)/(n-m)*180
    disp(O,"q=")
    end
printf("angle of asymptotes of CRL")
for i=0:(n-m-1)
    O=(2*i)/(n-m)*180
    disp(O,"q=")
end
//centroid
printf("Centroid=((sum of all real part of poles of G(s)H(s))-(sum of all real part of zeros of G(s)H(s))/(n-m) \n")
C=((0-4-1-1)-(-1))/(n-m);
disp(C,"centroid=")
