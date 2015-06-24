// chapter14
// example14.16
// page 312

Vp=10 // V
// for maximum power transfer, primary impedence = output impedence of aource
Rp=10d3 // ohm
Rs=16 // ohm

// since Rp=(Np/Ns)^2*Rs, making Np/Ns i.e. n as subject we get
n=(Rp/Rs)^(0.5)

// since Vs/Vp=Ns/Np, making Vs as subject we get
Vs=(1/n)*Vp
printf("required turn ratio = %d \n",n)
printf("voltage across external load = %.3f V \n",Vs)
