//////Variable Declaration
N = [10,50,100]       //Valures for N

//Calculations
printf("\n   N        ln(N!)       ln(N!)sterling      Error')
for i =10

 lnN = log(factorial(i))
    lnNs = i*log(i)-i
    err = abs(lnN-lnNs)
    printf('\n%3d       %5.2f        %5.2f              %4.2f',i,lnN,lnNs, err)
end
for i =50

 lnN = log(factorial(i))
    lnNs = i*log(i)-i
    err = abs(lnN-lnNs)
    printf('\n%3d       %5.2f        %5.2f              %4.2f',i,lnN,lnNs, err)
end
for i =100

 lnN = log(factorial(i))
    lnNs = i*log(i)-i
    err = abs(lnN-lnNs)
    printf('\n%3d       %5.2f        %5.2f              %4.2f',i,lnN,lnNs, err)
end
