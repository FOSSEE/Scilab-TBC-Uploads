clc
//machine A
c1 = 20000 // manual cost in Rs
c2 = 40000 // operating cost in Rs
n1 = 2 // machine life in years
i = 10 // interest rate 
i = 10/100
crf1 = ((1+i)^n1-1)/(i*(i+1)^n1) // capital recovery factor
pw1 = c1+c2*crf1 // present worth in Rs
// machine B
c3 = 50000 // manual cost in Rs
c4 = 30000 // operating cost in Rs
n2 = 4 // machine life in years
i = 10/100 // interest rate 
crf2 = ((1+i)^n2-1)/(i*(i+1)^n2) // capital recovery factor
pw2 = c3+c4*crf2 // present worth in Rs for 4 years
pw3 = (pw2*crf1)/crf2 // present worth in Rs for 2 years
printf("\n P.W. of expenses for A = Rs %d\n P.W. of expenses for B = Rs %0.2f" ,pw1,pw3)
disp("As the expenses of machine B are less , so this is economical")
// Answers vary due to round off error
