//Given that
n = 25
Ms = 9000  //in kg
Mm = 80  //in kg
d = [45, 10000]  //in meter
t = 2  //in minute
g = 9.8  //in m/s^2

//Sample Problem 8-5
count = 0
for x = d
    //Sample Problem 8-5a
    if count == 0 then
        printf("**Sample Problem 8-5a**\n")
        count = count + 1
    end
    //We can assume that the force applied by each of man is equal to twice his weight
    Wnet = n * (2* Mm * g) * x
    printf("The total work done is equal to %eJ\n", Wnet)
    
    //Sample Problem 8-5b
    if count == 1 then
        printf("\n**Sample Problem 8-5b**\n")
        count = count + 1 
    end
    //All the work done must be converted into thermal energy
    TE = Wnet
    printf("The total thermal energy generated is equal to %eJ\n", TE)
    
    //Sample Problem 8-5c
    if count == 2 then
        printf("\n**Sample Problem 8-5c**\n")
        count = count + 1 
    end
end