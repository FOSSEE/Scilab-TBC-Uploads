
//calculate the reluctance and current
A=5e-4
N=250
l=50e-2
F=700e-6
u=380
S=l/(4*%pi*10^-7*A*u)
I=F*S/N
disp('current='+string(I)+'amps'  , 'reluctance ='+string(S)+'AT/Wb')
