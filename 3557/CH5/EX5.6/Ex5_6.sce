//Example 5.6//
x=0.75*10^-3;//m //meter //given
t=3.6*10^4;//s //seconds //time
a=0.95;//given
D=(x^2)/((a^2)*(t))
mprintf("D = %e m^2/s",D)
b=20*10^-6;//m^2/s //preexponential constant
c=142000;//J/mol //activation energy for defect motion
d=8.314;//J/(mol.K)//universal gas constant 
e=c/d
//mprintf("\ne = %e",e)
y=(-log(D/b))
T1=inv(y/e)
mprintf("\nT1 = %i K  = 952 degree C",T1)
