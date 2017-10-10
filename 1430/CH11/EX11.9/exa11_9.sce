// Example 11.9
// Frequency Response of a Bandpass Amplifier
s=poly(0,'s');
num=20000*s;
den=(s+100)*(s+400);
H_s=num/den; // Bandpass amplifier transfer function
h1=syslin('c',H_s);
bode(h1)
