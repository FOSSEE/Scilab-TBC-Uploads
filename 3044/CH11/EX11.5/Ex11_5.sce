// Variable declaration
l = [ 20 0.18; 60 0.37; 100 0.35; 140 0.78; 180 0.56; 220 0.75; 260 1.18; 300 1.36; 340 1.17; 380 1.65 ]
alpha = 0.05
beta = 0.0

// Calculation



x = l(:,1)
y = l(:,2)
s1 = sum((x.^2)) - (sum(x))^2/10.0
s2 = sum(x.*y) - (sum(x)*sum(y))/10.0
s3 = sum((y).^2) - (sum(y))^2/10.0

t_thr = 2.306   // theoritical t-value t(0.025)
Slope = s2/s1

Sum_of_square = (s3 - (s2^2)/s1)/8
Se = sqrt(Sum_of_square)

c = sum(y)/10.0 - Slope*sum(x)/10.0

t_prt = ((Slope)/Se)*sqrt(s1)

// Result
printf ( "Practical t-value: %.2f" ,t_prt)
if(t_prt > t_thr) then
    printf ( "null hypothesis is rejected")
    printf ( "Relationship between air velocity & average evaporation cofficient EXISTS")
else
    printf ( "null hypothesis is accepted")
    printf ( "No Relationship between air velocity & average evaporation cofficient EXISTS")
end
    
