//To calculate the expected variations in closed loop gain 
disp("Given:")
disp("Af=10+0.2% or 10-0.2%")//To display given values
disp("-->Af=10 and dAf/Af=0.2%")
disp("The available amplifiers are with gains 50,500,5000")
disp("dA/A=20%")
disp("We have from formula")
disp("dAf/Af=(1/(1+A*b))*(dA/A)")//standard formula for closed loop gain 
disp("let f=0.2%=(dAf/Af),a=20%=(dA/A),k=(1+A*b)")
disp("Therefore we have:")
Af=10;
printf(" Af=%d\n",Af)
f=0.2/100;
printf(" f=%f\n",f)
a=20/100;
printf(" a=%f",a)
disp("Therefore,the above formula becomes f=(1/k)*a")
k=a/f
printf(" Therefore (1=A*b)>=%d,but,A=(1+A*b)*Af",k)
l=k*Af//store partial value
disp("A>=k*Af")//given condition
printf(" Therefore we got the value of A to be >=%d",l)//display value of A
printf("\n Therefore A=5000 satisfies the obtained condition.Therefore A=5000 is most economical")
A=5000
b=((A/Af)-1)*(1/A)
printf(" The value of b is %f",b)
disp("Pratical values of A are 4000 and 6000,since dA/A=(+-20%) and A=5000")
disp("Therefore ")
Afmin=(4000/(1+(4000*b)))//to print result
Afmax=(6000/(1+(6000*b)))//to print result
printf(" Afmin=%1.3f",Afmin)
devAfmin=(1-(Afmin/Af))*100;//deviation of Afmin from Af
printf("(%1.2f percent low)",devAfmin)//to display deviation from original value
printf("\n Afmax=%2.3f",Afmax)
devAfmax=(1-(Afmax/Af))*100;//deviation of Afmax from Af
dev=abs(devAfmax);//negative value of devAfmax indicates Afmax is greater than Af by abs(devAfmax)
printf("(%1.2f percent high) ",dev)//to display deviation from original value