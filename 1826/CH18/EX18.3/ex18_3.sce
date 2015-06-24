// Example 18.3, page no-461
clear
clc

n=2.69
er=4.94
alfi_by_alfe=(((n+2)*(er-1))/((er+2)*(n-1)))-1
printf("The ratio of the electronic to ionic polariability is %.4f",1/alfi_by_alfe)
