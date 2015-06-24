//Given that
m1 = 0.70  //in kg
m = [0.14, 3.2]  //in kg
k = [4.1* 10^4, 2.6* 10^6]  //in N/m
d = [16* 10^-3, 1.1* 10^-3]  //in meter

//Sample Problem 10-3a
printf("**Sample Problem 10-3a**\n")
name = ['board', 'block']
U = zeros(2,1)
for count = 1:2
    U(count) = 0.5* k(count)* d(count)^2
    printf("The energy stored in %s is %fJ\n", name(count), U(count))
end

//Sample Problem 10-3b
printf("\n**Sample Problem 10-3b**\n")
for count = 1:2
    //Energy conservation
    Vf = sqrt(U(count)/(0.5*(m1+m(count))))
    //Momentum conservation
    Vi = (m1 + m(count))*Vf/m1
    printf("The minimum velocity required to break the %s is %fm/s\n", name(count), Vi)
end