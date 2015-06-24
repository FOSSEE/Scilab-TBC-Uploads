
//calculate the mmf
l=1.5
u=1600
B=1.2
H1=B*l/(4*%pi*10^-7*u)
la=1e-3
ua=1
H2=B*la/(4*%pi*10^-7*ua)
H=H1+H2
disp('total amprs turns ='+string(H)+' AT' ,  'amprs turns='+string(H2)+' AT', 'amprs turns='+string(H1)+' AT')
