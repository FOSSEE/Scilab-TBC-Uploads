// chapter14
// example14.17
// page 312

Rp=300 //ohm
Rs=3 // ohm
Ro=3d3 // ohm

// since output resistance of transistor Ro=Rp+n^2*Rs for maximum power transfer, making n as subject we get
n=((Ro-Rp)/Rs)^0.5

printf("turn ratio for maximum power transfer = %d \n",n)
