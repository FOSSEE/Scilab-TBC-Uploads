// Example 11.10
//Bode Plot of a Narrowband Filter
s=%s;
num=20*s;
den=(s^2+20*s+10^4)
H_s=num/den; // Transfer function of given filter
h1=syslin('c',H_s);
bode(h1);
