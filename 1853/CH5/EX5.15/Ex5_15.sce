
//calculate teh efficiency at loads
KVA=20
Il=350
Cl=400
x=1
pf=0.8//at full load
pf1=0.4  //at half load
x1=0.5
op=KVA*1000*x
op1=KVA*1000*x1*pf1
Tl=Il+(Cl*x*x)
Tl1=Il+(Cl*x1*x1)
ip=op+Tl
ip1=op1+Tl1
%n=op/ip*100
%n1=op1/ip1*100
disp('efficiency at half load  n =  '+string(%n1)+'  '   , 'efficiency at full load  n1 =  '+string(%n)+'  '  )
