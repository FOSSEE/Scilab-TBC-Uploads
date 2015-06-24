// Variable declaration
alpha = 0.01                          // level of significance
n1 = 0
n2 = 0
R = [0.261,0.258,0.249,0.251,0.247,0.256,0.250,0.247,0.255,0.243,0.252,0.250,0.253,0.247,0.251,0.243,0.258,0.251,0.245,0.250,0.248,0.252,0.254,0.250,0.247,0.253,0.251,0.246,0.249,0.252,0.247,0.250,0.253,0.247,0.249,0.253,0.246,0.251,0.249,0.253]

// Calculation
z_thr = 2.33

Median = median(R)

for i = 1:40
    if(R(i)>Median) then
        n1 = n1 + 1
    else if(R(i)<Median) then
        n2 = n2 + 1
    end
    end
end

U = 27
MU = (2*n1*n2)/(n1+n2) + 1

SigmaU = sqrt(((2*n1*n2)*(2*n1*n2-n1-n2)) / (((n1+n2)^2)*(n1+n2-1)))

z_prt = (U - MU)/SigmaU

// Result
printf ( "practical Z: %.2f",z_prt)
if(z_prt > 2.33) then
    printf ( "null hypothesis must be rejected")
else
    printf ( "null hypothesis can not be rejected")
end
    
