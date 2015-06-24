syms sigmat1;
p=(5/8)*sigmat1
d=100//diameter=100mm
p1=90//N/mm^2
E=205*10^3//N/mm^2
mu=0.29
t=(p*d)/(2*sigmat1)//thickness of a tube
disp(t,"Thickness of a tube in mm")
deltad=((p1*d^2)*(2-mu))/(2*t*E*2)
disp(deltad,"Increase in diameter of tube in mm")