
clc
//solution
//given
t=15//mm
Fp=900//N
//let Rq and Rr be rxn at  Q and R
///tkaing monnt abt R
Rq=900*950/150//N
Rr=Rq-900//N
printf("the rxn at Q and R are ,%f N\n,%f N\n",Rq,Rr)
d1=12//mm//dia of tie rod
A=(%pi/4)*d1^2//mm^2
ft=Rq/A//N/mm^2
printf("the stress acting is,%f  N/mm^2\n",ft)
//dp=dq=dr=12//mm
dp=12//mm
Ap=(%pi/4)*dp^2//mm^2
Aq=Ap
Ar=Ap
tp=Fp/Ap
tq=Rq/(2*Aq)
tr=Rr/(2*Ar)
printf("the shear stressa cxting at P,Q,R are ,%f N/mm^2\n, %f N/mm^2\n, %f N/mm^2\n",tp,tq,tr)