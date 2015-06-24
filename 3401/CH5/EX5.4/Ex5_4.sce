clc

T=300 // ..K
Dn=225 //cm^2/s
e=1.6*10^-19// C
deltax=0.10 //cm
deltan=(1*10**18-7*10**17)//cm^-3

//Jnxdif=e*Dx*derivative (n,x)=e*Dn*(deltan/deltax)
Jnxdif=e*Dn*(deltan/deltax)
disp(Jnxdif,"diffusion current density in A/cm^2 is= ")
