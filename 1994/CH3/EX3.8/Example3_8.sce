
//Chapter-3,Example3_8,pg 3_38
n=3
R=1/(10^n)
//for 10V range
R=R*10
err1=R//1-digit error
//reading is 5V
err=(0.5/100)*5//error due to reading
errt=err1+err//total error
printf("error when reading is 5V\n")
printf("errt=%.4f V\n",errt)
//reading is 0.1V
err=(0.5/100)*0.1//error due to reading
errt=err+err1//total error
errp=(errt/0.1)*100
printf("percent error when reading is 0.1V\n")
printf("errp=%.1f ",errp)
