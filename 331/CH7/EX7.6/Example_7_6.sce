//Caption: Sampling Distribution of Mean when Population Variance is Unknown
//(Student's t-distribution)
//Example7.6
//Page208
n = 10;//Sample Mean
u = 94;//Mean annual sales of the population in lakhs
Sig = 81; //Variance of mean annual sales of the sample in lakhs
S = sqrt(Sig);//Standard deviation of the mean annual sales of the sample
Df = n-1;//degrees of freedom
X = 98;//mean annual sales of the sample 
t = (X-u)/(S/sqrt(n));
[P,Q]=cdft("PQ",t,Df)
disp(P,'The probability that the mean annual sales of the sample is  less than P(X<=98)=')
disp(Q,'The probability that the mean annual sales of the sample is less than P(X>=98)=')
//Result
//The probability that the mean annual sales of the sample is  less than P(X<=98)=   
//     0.9032736  
//The probability that the mean annual sales of the sample is less than P(X>=98)=   
//     0.0967264