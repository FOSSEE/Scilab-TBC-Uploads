//Variable Declaration
n = 3840   
p = 1.0/1200 
l = []
x = [0,1,2,3,4,5,6,7,8,9,10]

//Calculation
lamda = n*p

for i = 1:11
    l(i) = ((%e^-lamda)*(lamda^i))/factorial(i)
end

//Results
printf ( "Lamda: %.1f",lamda)
bar(x,l,width=1) 
xlabel("$No. of Failed generators$")
ylabel("$Probability$")
