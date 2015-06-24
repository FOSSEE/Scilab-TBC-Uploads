
S11=0.9*exp(%i*%pi/180*150)
S21=1.7*exp(-%i*%pi/180*80)
S12=0.07*exp(%i*%pi/180*120)
S22=1.08*exp(-%i*%pi/180*56)
function x=mod(n)
    r=real(n)
    i=imag(n)
    x=sqrt(r^2+i^2)
endfunction
del1=(1-S11)*(1-S22)-S12*S21
disp(del1,"del1=")
Z_11=((1+S11)*(1-S22)+S21*S12)/del1
disp(Z_11,"Z_11=")
Z_12=2*S12/del1
disp(Z_12,"Z_12=")
Z_21=2*S21/del1
disp(Z_21,"Z_21=")
Z_22=((1-S11)*(1+S22)+S21*S12)/del1
disp(Z_22,"Z_22=")
Zinductor=%i*2*%pi*2.75*10^9*1.45*10^-9

Z_inductor=Zinductor/50

disp([Z_inductor],"[Z_inductor]")

A=[Z_11,Z_12;Z_21,Z_22]+[Z_inductor,Z_inductor;Z_inductor,Z_inductor]
disp(A,"[Z_s11,Z_s12;Z_s21,Z_s22]=")


del=(Z_11+1)*(Z_22+1)-A(1,2)*A(2,1)
      disp(del,"del=")
       
 Ss12=2*A(1,2)/del
      disp(Ss12,"Ss12=")
Ss21=2*A(2,1)/del
      disp(Ss21,"Ss21=")
Ss11=((A(1,1)-1)*(A(2,2)+1)-A(1,2)*A(2,1))/del
       disp(Ss11,"Ss11=")
Ss22=((A(1,1)+1)*(A(2,2)-1)-A(1,2)*A(2,1))/del
        disp(Ss22,"Ss22=")
del=S11*S22-S21*S12
        disp(mod(del),"del=")


k=(1-mod(S11)^2-mod(S22)^2+mod(del)^2)/(2*mod(S12*S21))
disp(k,"k=")
Cs=conj(S11-del*conj(S22))/(mod(S11)^2-mod(del)^2)
disp(Cs,"Cs=")
rs=mod((S12*S21)/(mod(S11)^2-mod(del)^2))
disp(rs,"rs=")
CL=conj(S22-del*conj(S11))/(mod(S22)^2-mod(del)^2)           // I THINK 
disp(CL,"CL=")                                              // THERE IS A    
rL=mod(S12*S21/(mod(S22)^2-mod(del)^2))                     // PROBLEM IN BOOK
disp(rL,"rL=")                                              //IF THERE IS ERROR
FL=0.5689*exp(%i*%pi/180*167.8)                           //IN CODE LET ME KNOW
disp(FL,"FL=")
Fin=S11+S12*S21*FL/(1-S22*FL)
disp(Fin,"Fin=")
Zin=50*(1+Fin)/(1-Fin)
disp(Zin,"Zin=")
ZG=-real(Zin)/3-%i*imag(Zin)
disp(ZG,"ZG=")

