clc
function [I1]=Trapcomposite(f,a,b,n)
    funcprot(0)
    h=(b-a)/n
    x=linspace(a,b,n+1)
    I1=(h/2)*(2*sum(f(x))-f(x(1))-f(x(n+1)))
    funcprot(0)
    endfunction //for integration using numerical method
P1=150 //initial pressure of gas inside balloon in kPa
P2=450 //final pressure inside ballooon in kPa
D1=1 //initial diameter of balloon in metre
K=P1 //from P=k*D*D*D,in kPa/metre cube
D2=(P2/P1)^(1/3) //final diameter of balloon in metre
mprintf("D2=%fm\n",D2)//ans may vary due to roundoff error
deff('[W]=f(D)','W=(K*D.^5*%pi)/2')//work done obtained by integration of PdV using relation P=k*D*D*D
W=Trapcomposite(f,D1,D2,20)//work done
mprintf("W=%fkJ",W)//ans may vary due to roundoff error










