//chapter11
//example11.13
//page211

Ic=1000 // micro ampere
// when emitter circuit is open, leakage current = Icbo so
Icbo=0.2 // micro ampere

// when base is open, leakage current = Iceo so
Iceo=20 // micro ampere

//since Iceo=Icbo/(1-alpha) we get
alpha=1-(Icbo/Iceo)

// since Ic=alpha*Ie+Icbo we get
Ie=(Ic-Icbo)/alpha
Ib=Ie-Ic

printf("alpha = %.3f \n",alpha)
printf("emitter current = %.3f micro ampere \n",Ie)
printf("base current = %.3f micro ampere \n",Ib)
