// problem 10.15
n=6
Q=0.12
p=5003.1*1000
N=1450/60
w=9810
Ht=p/w
h=Ht/n
Ns=(N*(Q^0.5)/(h^0.75))*60
disp(Ns,"radial impeller would be selected")
