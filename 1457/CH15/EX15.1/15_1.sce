clc
//Initialization of variables
z2=500//ft
z1=300//ft
D=[1 1.5 2 2.5 3 4 6]
g=32.2
gam=62.4
//calculations
Dj=D/12
Vj=sqrt((z2-z1)*2*g./(1.04 + 640.*Dj.^4))
Aj=%pi/4 *Dj.^2
Q=Aj.*Vj
Pjet=gam*Q.*Vj.^2 /(2*g) /550
Pj=max(Pjet)
for i=1:length(Pjet)
    if(Pjet(i) ==Pj)
        break
    end
end
diameter=D(i)
//results
printf("Thus a pipe of %d in will be the optimum",diameter)
