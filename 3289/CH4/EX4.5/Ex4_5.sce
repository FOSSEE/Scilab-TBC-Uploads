clc

r=0.04 //m
t=5 //mm
sigmae=250 //MPa
sigmay=300 //MPa

//sigmathetamax=(p*r)/t =8*p        max values of tangential stresses
//sigmathetamin=((-p/4)*r)/t =-2*p   min values of tangential stresses
//sigmazamax=(p*r)/2*t =4*p       axial principal stresses
//sigmazmin=((-p/4)*r)/2*t =-p

//sigmathetaa=(sigmathetamax-sigmathetamin)/2= 5p    alternating and mean stresses
//sigmathetam=(sigmathetamax+sigmathetamin)/2= 3p
//sigmaza=(sigmazamax-sigmazmin)/2 =2.5p
//sigmazm=(sigmazamax+sigmazmin)/2 =1.5p

//sqrt(sigmathetaa^2-sigmathetaa*sigmaza+sigmaza^2)=sigmaea
//sqrt(sigmathetam^2-sigmathetam*sigmazm+sigmazm^2)=sigmaem

//sqrt(25p^2-12.3p^2+6.25p^2)=sigmaea
//sqrt(9p^2-4.5p^2+2.25p^2)=sigmaem           solving this equation we get
sigmaea=4.33 //p
sigmaem=2.60 //p

p=1/((sigmaea/sigmae)+(sigmaem/sigmay))
disp(p,"the value of p in MPa is= ")
