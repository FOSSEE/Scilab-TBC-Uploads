clc
//initialisation of variables
p=100//lb/in62
p1=0.5//lb/in^2
T1=659.3//C.H.U/lb
T2=26.2//C H U/lb
W=181//C H U/lb
H1=66//C H U/lb
H2=115//C H U /lb
D=0.912//C H U/lb
H3=533.4//C H U/lb
T3=108.5 //Degree C
T4=26.4//Degree C
W1=82.1/(D*H3)//lb
s=1-W1//lb
//CALCULATIONS
T=W/(T1-T2)*100//percent
Wd=H1+(H2*s)//C H U/lb
H=T1-T3//C H U//lb
TE=Wd/H*100//percent
//RESULTS
printf('the without bleeding % f pecent',T)
printf('the proper weight of steam is bled=% f percent',TE)
