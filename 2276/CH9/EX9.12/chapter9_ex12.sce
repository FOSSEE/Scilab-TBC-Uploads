clc
clear

//input
kva=5;//kVA rating of the transformer
pf=0.8;//power factor
vp=250;//voltage on primary side in volts
vs=500;//voltage on secondary side in volts
//from equivalent circuit
r0=750;//resistance in ohms
x0=325;//reactance in ohms
Rp=0.4;//equivalent resistance refered to primary side in ohms
Xp=0.75;//equivalent reactance refered to primary side in ohms

//calculations
is=(kva*1000)/vs;//full load secondary current in amperes
ip1=is*(vs/vp);//current in amperes
ep=vp-((ip1*pf)+(Xp*sin(acos(pf))));//in volts
Vs=ep*(vs/vp);// in volts
i1=vp/(vs+vp);//component of Io in phase with Vs in amperes
i2=i1*pf;//component of Ie in phase with Ip
i3=i1*sin(acos(pf));//component of Ie in quadrature with Ip
im=vp/x0;//magnetizing current in amperes
i4=im*sin(acos(pf));//component of Im in phase with Ip
i5=im*pf;//component of Im in quadrature with Ip
Ip=(((ip1+i2+i4)^2)+((i5-i3)^2))^0.5;//total primary current in amperes
P=vp*Ip*pf;//power input in watts
pc=ip1*ip1*i4;//copper loss in watts
pi=vp*i1;//iron loss in watts
n=1-((pc+pi)/P);//efficiency in per units

//output
mprintf('the primary input current is %3.2f A : the secondary terminal voltage is %3.0f V and the efficiency of the transformer is %3.2f p.u.',Ip,Vs,n)
