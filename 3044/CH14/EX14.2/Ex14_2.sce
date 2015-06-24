// Variable declaration
alpha = 0.05                          // level of significance
n = 10
l = [45,73,46,124,33,57,83,34,26,17;36,60,44,119,35,51,77,29,24,11]

// Calculation
// null hypothesis: if U = 0 else alternative hypothesis
// sample size = 10

count =0                              // counts number of +ve signs

for i = 1:10
    if(l(1,i)>l(2,i)) then
        count  = count + 1
    end
end

// probability corresponding to x >=count and n=10
p = 1 - 0.9893

// Result
if(p>0.05) then
    printf ( "null hypothesis can not be rejected, i.e. safety program is not effective")
else
    printf ( "null hypothesis rejected, i.e. safety program is effective")
end
