//example-11.6
//page no-357
//given
//material constant
K=500  //MPa
//strain hardenening coefficient
n=0.20
//according to true stress-strain relation
//sigmat=d sigmat/d epsilont=d(Kepsilont^n)/d epsilont
//so we get
//sigmat=n*K*epsilont^(n-1)  -----(1)
//also we know that
//sigmat=K*epsilont^n  ------------(2)
//equating (1) and (2)
epsilont=n
//also we know that
//epsilont=log (1+epsilonc)
//so
epsilonc=exp(epsilont)-1  
//now
sigmat=K*epsilont^n  //MPa
printf ("the maximum tensile strength %f \n and the linear strain are %f MPa ",epsilonc,sigmat)
