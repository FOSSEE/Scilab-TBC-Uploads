// example:-8.7,page no.-425.
//design a 20 db single section coupled line coupler in stripline.
C=10^(-20/20);f=3*10^9;eipsila=2.56;Zo=50;b=0.00158;
Zoe=Zo*sqrt((1+C)/(1-C));
Zoo=Zo*sqrt((1-C)/(1+C));
Zoe=eipsila*Zoe;
Zoo=eipsila*Zoo;
x=0.72; //x=w/b.
y=0.34; // y=s/b.
w=0.72*b*100;
s=0.34*b*100;
disp(w,'conductor width in cm = ')
disp(s,'conductor seperation in cm = ')