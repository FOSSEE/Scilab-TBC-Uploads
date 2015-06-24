//consider a rod of stainless steel.
D=0.01905;//diameter(meter) of the rod
l=2.54;//length(meter) of the rod
T=53378.66;//Applied load(N) on the rod
Y=0.2*10^7;//young's modulous of the rod
sigma=T/(%pi*D^2*10^5/4) //tensile stress(bar) on the rod
//as the value of tensile stress is less than tensile yield stress Hook's law can be applied,so :
strain=sigma/Y //strain on the rod