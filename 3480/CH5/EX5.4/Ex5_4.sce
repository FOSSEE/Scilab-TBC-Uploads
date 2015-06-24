//Example 5.4, page 113
clc
n1=1.50
n2=1.60
n_dash=1.33
n_doubledash=1
p1=((n1-n_doubledash)/.04)+((n_dash-n1)/-0.04)
p2=((n2-n_dash)/-.06)+((n_doubledash-n2)/.06)
p=p1+p2+(-.015*p1*p2)
printf("The power is %f D", p)
//Part b
f=1/p
f_doubledash=1/p
printf("\nThe focal length f is %f m",f)
printf("\n The focal length f'' is %f m",f_doubledash)
//Part c
A1f=-(1/p)*(1+(.015*14.45))
A2H=-(1/p)*((.015*-4.45))
A2f11=-(1/p)*(1-(.015*16.67))
printf("\nThe focal point A1F is %f m",A1f)
printf("\nThe focal point A2H is %f m",A2H)
printf("\nThe focal point A2F11 is %f m",A2f11)
//Part d
A2H11=(1/p)*0.015*16.67
printf("\nThe principal point is %f m",A2H11)



