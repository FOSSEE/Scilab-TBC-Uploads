//Variable declaration
l = [19.7, 21.5, 22.5, 22.2, 22.6,21.9, 20.5, 19.3, 19.9, 21.7,22.8, 23.2, 21.4, 20.8, 19.4,22.0, 23.0, 21.1, 20.9, 21.3]
sum1 = 0.0
//Calculation
Mean=sum(l)/length(l)   

for i = 1:length(l)
    sum1 = sum1 + l(i)*l(i)
end    

variance = (sum1 - (sum(l)^2.0/length(l)))/(length(l)-1)   // variance

//Results
printf ( "mean : %.3f mpg",Mean)
printf ( "variance : %.3f",variance )
