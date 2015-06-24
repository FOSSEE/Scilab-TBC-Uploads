// Variable declaration
alpha = 0.01                           // level of significance

// Calculation
// null hypothesis: if U = 98 else alternative hypothesis
// x: number of Plus signs with respect to 98.0
// sample size = 14
l = [99.0,102.3,99.8,100.5,99.7,96.2,99.1,102.5,103.3,97.4,100.4,98.9,98.3,98.0,101.6]
l = l-98.0

count =0                              // counts number of +ve signs

for i = 1:length(l)
    if(l(i)>0) then
        count  = count + 1
    end
end

// probability corresponding to count >=12 and n=14
p = 1 - 0.9935

// Result
if(p>0.01) then
    printf ( "null hypothesis can not be rejected, i.e. median octane rating does not exceed 98.0")
else:
    printf ( "null hypothesis rejected, i.e. median octane rating exceeds 98.0")
end
