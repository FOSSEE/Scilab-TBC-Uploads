clc 
// Given that
lambda = 1.4e-11 // K-absorption edge for lead in m
V = 88.6e3 // minimum voltage required for producing k-lines in V
c = 3e8 // speed of light in m/sec
// Sample Problem 13 on page no. 20.11
printf("\n # PROBLEM 13 # \n")
printf("Standard formula used \n ")
printf(" h*c/Lambda = eV \n")
r = V * lambda / c
printf("\n The value of the ratio of h/e = %e Jsec/C.",r)
