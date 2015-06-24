exec('degree_rad.sci', -1)

//Given that
a = [2,0]
b = [2 *cos(dtor(30)),2 *sin(dtor(30))]
c = [-1,0]

//Sample Problem 3-1
printf("**Sample Problem 3-1**\n")
poss = [norm(a+b+c) norm(a-b+c), norm(a+b-c), norm(a-b-c)]
max_norm = 0
for v = poss
    if v > max_norm  then max_norm = v        
    end
end
printf("The maximum possible value is %f m", max_norm)