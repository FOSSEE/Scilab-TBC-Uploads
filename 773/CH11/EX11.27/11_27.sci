//value//
s=%s;
syms k Wn;
H=syslin('c',1/((s+3)^2*s)); 
evans(H,100) //root locus 
printf("To determine the value of Wn \n")
disp(k*H,"G(s)H(s)=")
y=1+(k*H);
disp('=0',y,"1+G(s)H(s)")
evans(H,100)
[num,den]=numden(y)

 cof_a_0 = coeffs(num,'s',0);
    cof_a_1 = coeffs(num,'s',1);
    cof_a_2 = coeffs(num,'s',2);
    cof_a_3 = coeffs(num,'s',3);
    r=[cof_a_0 cof_a_1 cof_a_2 cof_a_3] 

n=length(r);
routh=[r([4,2]);r([3,1])];
routh=[routh;-det(routh)/routh(2,1),0];
t=routh(2:3,1:2); //extracting the square sub block of routh matrix
routh=[routh;-det(t)/t(2,1),0]
//to obtain Wn
disp('=0',((6*s^2)+54),"auxillary eq")
p=(6*(s^2))+k;
s=%i*Wn
k=54;
p=eval(p) 
Wn=sqrt(k/6)
printf("With gvn values of zeta adding a grid on root locus \n")

zeta=0.5; //given
sgrid(zeta,Wn,7) //add a grid over an existing continuous s-plane root with given values for zeta and wn.
printf("NOTE:-click on the point where locus intersects z=0.5 for desired value of k \n")
k=-1/real(horner(H,[1,%i]*locate(1)))  //To obtain the gain at a given point of the locus


p=locate(1) //desired point on the root locus
