//Given that
eta = 0.75
TH = 100 + 273
TL = 0 + 273

//Sample Problem 21-5
printf("**Sample Problem 21-5**\n")
etaMAX = 1 - TL/TH
if eta < etaMAX then
    printf("It is possible")
else 
    printf("It is not possible")
end