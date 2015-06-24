// Example 4.9, page no-212
clear
clc
sg1=0.85
sg2=0.8
span=150
H=span/(sg1-sg2)
printf("(a)\nH=%d mm = %dm",H,H/1000)
span_min=1500
span2=span_min*(sg1-sg2)
span2=ceil(span2)
printf("\n(b)\nD/P span = %d mm",span2)
