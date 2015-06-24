//chapter-8,Example8_11,pg 500

n=20//(Vs/Is)

Is=5//n=(Vs/Is)

Vs=100//n=(Vs/Is)

N=0.25//resistance to reactance ratio

Bur=15//burden of CT=15VA (rating)

V=(Bur/Is)//voltage rating

B=atan(N)//cos(B)-> power factor

B=B*(180/%pi)//conversion into degree

IL=0.13//iron loss

I=(Bur/Vs)//current rating

I1=(IL/I)

Im=1.3//magnetizing current

Rac=0.23//actual value

R=n+((I1*cos(B)+Im*sin(B))/Is)//calculated value

theta=((Im*cos(B)-I1*sin(B))/Vs)//phase angle

nerr=-(Rac/R)*100//ratio error

printf("ratio error\n")

printf("nerr=%.4f \n",nerr)

printf("phase angle \n")

printf("theta=%.4f ",theta)