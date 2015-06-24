//Example 4
//chapter 43
d=3200//in A
n=1.33
for m=1:2
    lambda_max=(2*d*n)/(m+0.5)
    lambda_min=(8500/m)
    disp(m, "when m=")
    disp(lambda_max,"lambda_max=")
    disp(lambda_min,"lambda_min=")
end