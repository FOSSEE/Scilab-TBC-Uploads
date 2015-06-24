clear; 
clc;
printf("\n Example 17.5");
//let x = [f(C)]mean
 x = (8.4*10^(-2)*1266)/(2.67*10^(-3)*1.186);
 
 //e is porosity
   e = 0.47;
   m = e/(1-e);
   printf("\n m = %.2f",m);
   
//The velocity uc with which the adsorption wave moves through the column may be obtained from equation 17.79
 uc = 6.2*10^(-6);
 density = 1266;               //density is in kg/m^3
 Gs = uc*(1-e)*density;
 printf("\n Gs = %.2f*10^(-3) kg/m^2.sec ",Gs*10^3);
 
 
//From overall balance:
  //We have given eq: Gs1(0.084-0)=0.129(0.00267)
  //On solving above eq :
  Gs1 = poly([0],'Gs1');
  Gs2 = roots(Gs1*(0.084-0)-0.129*(0.00267));
  printf("\n Gs1 = %.2f*10^(-3) kg/m^2.sec",Gs2*1000);
  
//Part(b)
 //time ta for the adsorption zone to move its own length za is given by:
 za = 0.185;
 ta =(za/uc)/3600;
 printf("\n ta = %.1f hrs",ta); 
 
 //The time taken for a point at a distance z into the zone to emerge is given by:
 //t = (z1/za)ta
 yr = [0.0001 0.0002 0.0006 0.0010 0.0014 0.0018 0.0022 0.0024];
 yre = [0.00005 0.0001 0.00032 0.00062 0.00100 0.00133 0.00204 0.00230];
I=0;
I1 = 0;
i=1;
printf("\nI= %.1f",I);
while i <=8
    y(i)=1/(yr(i)-yre(i));
    if i>1 then
        I = I + (yr(i)-yr(i-1))*(y(i)+y(i-1))/2;
        printf("\n I=%.1f",I);
    end
    i=i+1;   
end
z_za = [0 0.137 0.362 0.473 0.560 0.674 0.852 1.000];
t = (z_za)*ta;
j=1;
while j<=8
    printf("\ntime = %.1f h",t(j));
    j=j+1;
end



 
  
  
  















