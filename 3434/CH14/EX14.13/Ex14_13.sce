clc
// given data



ProjAcu=[-2400.0,-1864.0,-1386.0,-959.0,-578.0,-238.0] // in Rs
ProjBcu=[-2400,-1686,-1048,-479.0,30,484] // in Rs
ProjCcu=[-2400,-1954,-1396,-755,-56.0,683] // in Rs

ProjAdis=[-2400,536,478,427,381,340] // in Rs
ProjBdis=[-2400,714,638,569,509.0,454] // in Rs
ProjCdis=[-2400,446,558,641,699,738.0] // in Rs

PA=0
PB=0
PC=0

for i =1:5
     if ((ProjAcu(i)<0) & (ProjAcu(i+1)>0))
        PA=(i+1)-ProjAcu(i)/ProjAdis(i+1)-1
    end
    
end

printf( "\nFor project A")
if (PA==0)
    printf( "\nNet loss, Thus should be rejected")
else:
    printf( "\n% .2f years is payback period",PA) 
end

for i =1:5
    
    if ((ProjBcu(i)<0) & (ProjBcu(i+1)>0))
        PB=(i)-ProjBcu(i)/ProjBdis(i+1)-1
    else
    end
end

    
printf( "\n\nFor project B" )

if (PB==0)
    printf( "\nNet loss, Thus should be rejected"
else:
    printf( "\n%.2f years is payback period",PB) 
end   
for i =1:5
    
    if ((ProjCcu(i)<0) & (ProjCcu(i+1)>0))
        PC=(i)-ProjCcu(i)/ProjCdis(i+1)-1
    else
        end
end
    
printf( "\n\nFor project C")

if (PC==0)
    printf( "\nNet loss, Thus should be rejected")
else
    printf( "\n%.2f years is payback period",PC )
end


