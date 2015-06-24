clear;
clc;

// Stoichiometry
// Chapter 4
// Material Balances involving Chemical Reaction


// Example 4.4
// Page 119
printf("Example 4.4, Page 119 \n \n");

// solution

n=100 //[kmol] outgoing gas from 2nd scrubber
n1=.852*n //[kmol] N2
n2=21*n1/79 //[kmol] O2
n3=n2-2.1 // [kmol] reacted O2
// O2 balance
// O2 consumed in rxn (ii),(iii),(v) - O2 produced by rxn (iv) = 20.55 kmol
// let a,b,c be ethanol reacted (ii),(iii),(iv) and d be H2 reacted in (v)

// CO balance
a=2.3/2 //kmol

//CO2 balance 
b = .7/2

//CH4 balance
c=2.6/2

//O2 balance
d = 41.1-a-3*b+c

//H2 balance
e = 7.1 +c+d //kmol (total H2 produced)
f = e-(3*b + 3*a) //kmol  (H2 produced in (i) = ethanol reacted in (i))
g = f+a+b+c // total ethanol reacted
h = 2*(n1+n2) // total ethanol entering
c1 = g*100/h
printf("(a) \n \n Conversion percent of ethanol = "+string(c1)+" \n \n \n")
y = f*100/g
printf("(b) \n \n Yield of acetaldehyde = "+string(y)+".")
