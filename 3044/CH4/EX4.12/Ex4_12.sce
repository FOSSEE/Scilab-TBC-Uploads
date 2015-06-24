//Variable declaration
n1 = 4        // for subplot-1
p1 = 0.5      // for subplot-1
n2 = 16       // for subplot-2
p2 = 0.5      // for subplot-2

//Calculation

function ans =  comb(n,r)
    // returns number of total combination of selecting "r" items out of "n" 
    ans = factorial(n)/(factorial(r)*factorial(n-r))
endfunction    


// To calculate standard deviation of subplot-1

x1 = [0,1,2,3,4]                 // for subplot-1
f1=[]
Mean1 = (n1)*(p1)                // mean of subplot-1
y1=0

for each = 1:length(x1)
    y1 = y1 + ((x1(each)-Mean1)^2)*(comb(n1,x1(each))*((p1)^n1))
end

std_dev1 = sqrt(y1)              // standard deviation of subplot-1

for each = 1:length(x1)
    f1(each) = ((comb(n1,x1(each))*((p1)^n1)))
end
    
// To calculate standard deviation of subplot-2

x2=[2,3,4,5,6,7,8,9,10,11,12,13,14]      // for subplot-2
f2=[]
Mean2 = (n2)*(p2)                        // Mean of subplot-2
y2 = 0

for each = 1:length(x2)
    y2 = y2 + ((x2(each)-Mean2)^2)*(comb(n2,x2(each))*((p2)^n2))
end

std_dev2 = sqrt(y2)              // Standard deviation of subplot-2

for each = 1:length(x2)
    f2(each) = ((comb(n2,x2(each))*((p2)^n2)))
end
    
// subplot-1
subplot(2,1,1)
bar(x1,f1 ,width=1.0)
title("Probability distribution plot-1")
xlabel("$x$")
ylabel("$f1(x)$")

// subplot-2
subplot(2,1,2)
title("Probability distribution plot-2")
bar(x2,f2 ,width=1.0)
xlabel("$x$")
ylabel("$f2(x)$")

//Results
printf ( "First subplot standard deviation: %.2f \nSecond subplot standard deviation : %.f",std_dev1,std_dev2)
