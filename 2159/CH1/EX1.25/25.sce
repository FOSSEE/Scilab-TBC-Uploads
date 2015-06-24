// problem 1.25
d=1.8
h=2.4
w=9810
s=0.8
p1=w*d*d*h*0.25*3.142
h1=((d*d)/(16*h))+h
p=w*(s*1.5+2.4)
p2=p*3.142*d*d*0.25
p=p2-p1
ab=w*(s*1.5+1.5)
de=w*(s*1.5+3.3)
ce=de-ab
x=((0.5*ce*d*0.3)/(0.5*(ab+de)*d))
h2=x+h
h12=h1-h2
disp(p, "change in total pressure")
disp(h2,"position of centre of pressure")
disp(h12,"change in position of centre of pressure")
