clc

// given data



ProjectA=[-2400,600,600,600,600,600] 
ProjectB=[-2400,800,800,800,800,800]
ProjectC=[-2400,500,700,900,1100,1300]

ProjAcu=zeros(6)  // cumulative cash flow for project A
ProjAcu(1)=ProjectA(1)
for i =2:6
    
    ProjAcu(i)=ProjectA(i)+ProjAcu(i-1)
    
end
    
ProjBcu=zeros(6) // cumulative cash flow for project B
ProjBcu(1)=ProjectB(1)
for i =2:6
    
    ProjBcu(i)=ProjectB(i)+ProjBcu(i-1)
    
end

ProjCcu=zeros(6) // cumulative cash flow for project C
ProjCcu(1)=ProjectC(1)
for i =2:6
    
    ProjCcu(i)=ProjectC(i)+ProjCcu(i-1)
end
    
    
printf( "\tProject A\t\tProject B\t\tProject C")
printf( "\nyear\tcurrent\tcummulative  current cummulative   current  cummulative ")
for i =2:7
    
    printf( "\n %i\t%i\t%.i\t\t %.i\t%.i \t \t%.i  \t%.i",(i-2),ProjectA(i-1),ProjAcu(i-1),ProjectB(i-1),ProjBcu(i-1),ProjectC(i-1),ProjCcu(i-1))
end


for i =1:6
    
    if ProjAcu(i)==0
        PA=i-1 
    else
    end
end

for i =1:6
    
    if ProjBcu(i)==0
        PB=i-1
    else
    end
end
   
for i =1:6
    
    if (ProjCcu(i)<0 & ProjCcu(i+1)>0)
        PC=i-ProjCcu(i)/ProjectC(i+1)-1
    else
   end
end

printf( " \n The payback period for project 1 is %.2f \n The payback period for project 2 is %.2f \n The payback period for project 3 is %.2f",PA,PB,PC)
