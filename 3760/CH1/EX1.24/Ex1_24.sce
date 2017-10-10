clc;
pc1=52; // core loss at f=40
f1=40; // frequency in hertz
pc2=90; // core loss at f=60
f2=60; // frequency in hertz
f=[f1 f1^2;f2 f2^2];
pc=[pc1;pc2];
k=inv(f)*pc;
// proportionality constants for hysteresis and eddy current losses are
kh=k(1);disp(kh) // proportionality constants for hysteresis losses
ke=k(2);disp(ke) //  proportionality constants for eddy current losses
// determining both losses at 50 hertz
f=50;
ph=kh*f;
printf('hysteresis losses at 50 hertz is %f W\n',ph);
pe=ke*f^2;
printf('eddy current losses at 50 hertz is %f W',pe);
// answer for eddy current losses is misprinted in book
