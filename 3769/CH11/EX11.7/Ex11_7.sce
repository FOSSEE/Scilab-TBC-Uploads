clear
//given
N=1800
l=0.6
I=0.9                           //A
ur=500
n1=6.02*10**26
a=55.85
y=7850

//Calculation
n=N/l
H=n*I
I1=(ur-1)*H
B=4*%pi*10**-7*ur*H
x=(y*n1)/a
X=I1/x

//Result
printf("\n Average magnetic moment per iron atom is %0.2f *10**-23  A m**2",X*10**23)
