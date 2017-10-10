clc
a=83.56 //moles of nitrogen in product
b=3.7619
y=a/b 
mprintf("y=%f\n",y)//ans vary due to roundoff error
c=(9.27+2.31)//moles of carbon in product
d=5
x=c/d
mprintf("x=%f\n",x)//ans vary due to roundoff error
e=(12*x)
z=e/2 
mprintf("z=%f\n",z)//ans vary due to roundoff error
t=(y+a)/x
mprintf("Actual air-fuel ratio is given by%f mol air/mol fuel\n",t)//ans vary due to roundoff error
s=38.095
mprintf("percent theoretical air=%f\n",(t/s)*100)//ans vary due to roundoff error
