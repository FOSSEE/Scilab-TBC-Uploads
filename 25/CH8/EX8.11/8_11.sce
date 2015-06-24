// example:-8.11,page no.-444.
// calculate the even and odd-mode characteristic impedences for a tapered coupled line 180 deg. hybrid for a 3 db coupling ratio and a 50 ohm characteristic impedence.
alpha=0.707;bta=0.707;Zo=50;
k=(1-alpha)/(1+alpha);
Zoe=Zo/k;
Zoo=k*Zo;
disp(Zoo,'Zoo =  ')
disp(Zoe,'at (Z=L) the characteristic impedences of the coupled line must be = ')
disp('at Z=0,there will be no coupling')