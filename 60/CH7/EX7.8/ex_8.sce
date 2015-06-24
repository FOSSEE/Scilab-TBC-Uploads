//Example 7.8

// True value of the integral
x0=0
x1=1
I=integrate('sqrt(x)','x',0,1)

//using adaptive quadrature based on simpsons rule

deff('[y]=f(x)','y=[(x)^(1/2)]')
x=1:1:10
 plot(x,f)
 
x2=(x0+x1)/2;
h=1/2
//considering the interval [x2,x1]=[1/2,1]

s=h/6.*{f(x2)+4*f((x2)+h/2)+f(x1)}
p=h/12*{f(x2)+4*f((x2)+h/4)+2*f((x2)+h/2)+4*f(x2+3*h/4)+f(x1)}
E=(1/15)*(p-s)
////Error criterion is clearly satisfied , hence we put value of p to SUM register to obtain partial approximation
//considering the interval  [x2,x1]=[0,1/2]

s1=h/6.*{f(x0)+4*f((x0)+h/2)+f(x2)}
p1=h/12.*{f(x0)+4*f((x0)+h/4)+2*f((x0)+h/2)+4*f(x0+3*h/4)+f(x2)}
E1=1/15.*[p1-s1]

// Here since error is not less than 0.00025 we have to divide interval[0,1/2] to [0,1/4]& [1/4,1/2]
h=1/4
//considering interval [1/4,1/2]

x3=1/4

s2=h/6.*{f(x3)+4*f((x3)+h/2)+f(x2)}
p2=h/12.*{f(x3)+4*f((x3)+h/4)+2*f((x3)+h/2)+4*f(x3+3*h/4)+f(x2)}
E2=1/15.*[p2-s2]

// E2 < (0.0005)/4
//Error criterion is clearly satisfied , hence we add value of p2 to SUM register to obtain partial approximation
sum=p+p2
funcprot(0)
//Applying again above basic formulas

//with h=1/4  , in  interval [0.1/4]
// we get

s3=0.07975890
p3=0.08206578
E3=0.0001537922
 // Here since error is not less than 0.000125 we have to divide interval
// [0,1/4] in to [0,1/8]& [1/8,1/4] with h=1/8
h=1/8

// for interval [1/8,1/4]

s4=0.05386675
p4=0.05387027
E4=0.0000002346
 

// E4 < (0.0005)*h =(0.0005)/8 =0.0000625  
//Error criterion is clearly satisfied , hence we add value of p4 to 
//SUM register to obtain partial approximation
 sum=p+p2+p4
 
 
// consider interval [0,1/8] 

s5=0.02819903
p5=0.02901464
E5=0.00005437

// E5 < 0.0000625  

//Since the error test is passed on both intervals , we can add these values in to sUM register to get
sum=p+p2+p4+p5

// since the exact value of I is 0.666666666
abs(sum-I) <0.0005  // over the interval [0,1]

