// chapter14
// example14.15
// page 311

// for maximum power transfer, primary impedence = transistor output impedence and secondary impedence = load impedence
Rp=1d3 // ohm
Rs=10 // ohm

// since Rp=(Np/Ns)^2*Rs, making Np/Ns i.e. n as subject we get
n=(Rp/Rs)^(0.5)

printf("required turn ratio = %d \n",n)

if n>1
    printf("transformer required is step down tranformer \n")
elseif n<1
    printf("transformer required is step up tranformer \n")
else // n=1
    printf("transformer is not required \n")
end
