// Variable Declaration
l = [250 19 ; 290 10 ; 270 17 ; 100 11 ; 300 70 ; 410 60 ; 110 18 ; 130 30 ; 1100 180]

// Calculation
x = l(:,1)
y = l(:,2)

subplot(2,1,1)
plot(x ,y,"ro")
title("y Vs x")
xlabel("$x$")
ylabel("$y$")

s1 = sum((x.^2)) - (sum(x))^2/9.0
s2 = sum(x.*y) - (sum(x)*sum(y))/9.0
s3 = sum((y.^2)) - (sum(y))^2/9.0

r = s2 / sqrt(s1*s3)
printf ( "correlation coefficient: %.3f",r)

for i  = 1:9
    for j = 1:2
        l(i,j) = log(l(i,j))
    end
end

lnx = l(:,1)
lny = l(:,2)
    
subplot(2,1,2)
plot(lnx, lny,"ro")
title("lny Vs lnx")
xlabel("$lnx$")
ylabel("$lny$")

s1 = sum((lnx.^2)) - (sum(lnx))^2/9.0
s2 = sum(lnx.*lny) - (sum(lnx)*sum(lny))/9.0
s3 = sum((lny.^2)) - (sum(lny))^2/9.0

// correlation coefficient
r = s2 / sqrt(s1*s3)
printf ( "correlation coefficient: %.2f",r)
