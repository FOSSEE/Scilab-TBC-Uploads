clear
//given
//find brake mean effective pressure
bhp=150.
D=8.
L=10**0.5
M=5.
N=600.
//substutting bmep
Bmep=1008000*(150./(8.*8.*5.*600.*10**0.5))
printf("\n \n brake mean effective power %.2f psi",Bmep/3.32)
