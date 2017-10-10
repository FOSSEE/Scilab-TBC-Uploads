////
//Variable Declaration
fi = 1       //Probability of receiving any card
n = 52       //Number od Cards

//Calculations
sum = 0
for i = 1:52
    sum = sum + fi
end
Pxi = (fi/sum)

//Results
printf("\n Probability of receiving any card is %f', Pxi)
