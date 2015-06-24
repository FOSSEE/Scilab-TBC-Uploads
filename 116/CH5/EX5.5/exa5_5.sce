
//Caption:Program to determine the implementaton complexity of a 131,072 channel

//Example 5.5
 
//Page 261
 
disp('The space switch can be designed bt take the first space stage. A value of 32 is chosen as a convenient binary number.')

n=32//binary w.r.t (N/2)^2

k=27//determined as a blocking probability of 0.0015

//Refer equations 5.18 and 5.19
 
Nx=[2*1024*27]+[27+(32^2)]

Nx=[2*1024*27]+[27*(32^2)]

Nbx=[2*27*128*32*5]+{27*128*32*5}

Nbt=[2*1024*128*8]
 
Nbtc=[2*1024*128*7]
 
cmplx=[Nx+{(Nbx+Nbt+Nbtc)/100}]
 
//Result

//Complexity is 138,854 equivalent crosspoint.
 