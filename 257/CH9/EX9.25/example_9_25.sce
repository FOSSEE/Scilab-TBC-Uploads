s=%s
sys=syslin('c',k/(s*(s+4)*(s+2)))
evans(sys)


//values of k

[Ki,s]=kpure(sys) 
disp("k should be less than")
disp(Ki)

//frequency of oscillations
s=%s
P=s^3+6*s^2+8*s+Ki
routh=routh_t(P)
disp(routh)
disp("frequency of oscillations is")
 disp(sqrt((roots(routh(2,:)))))
 
 //damping ratio is 0.5 given
// cos inverse of 0.5 is 60  degrees. from the root locus, the 60 degree line crosses the locus at (-0.75+j*1.25)

f=(-0.75+%i*1.25)
disp("k for damping ratio 0.5 is")
disp(abs(f*(f+4)*(f+2)))