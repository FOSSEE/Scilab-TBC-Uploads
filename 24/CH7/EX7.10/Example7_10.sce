exec("degree_rad.sci",-1)

//Given that
//taking right direction as positive direction
F1 = [-2, 0]  //in N
v = [3, 0]  //in m/s
mag = [4,6]

//Sample Problem 7-10a&b
Qnum = ['a', 'b']
count = 1
for x = mag
    printf("\n**Sample Problem 7-10%s**\n", Qnum(count))
    F2 = [x*cos(dtor(60)), x*sin(dtor(60))]  //in N
    //from the definition of the power
    P1 = F1 * v'
    P2 = F2 * v'
    Pnet = P1 + P2
    printf("The power transferred by F1 is %dW\n", P1)
    printf("The power transferred by F2 is %dW\n", P2)
    printf("The net power transferred is %dW\n", Pnet)
    Pnet = round(Pnet)
    if Pnet == 0
        printf("The Kinetic energy is not changing\n")
    else
        printf("The Kinetic Energy is changing\n")
    end
    count = count + 1
end