//Example 17.11//

b=100;//g //doped GaAs
c=10^9;//ppb Se 
d=100;//g //given
a=(d/c)*b
mprintf("a = %e g Se",a)
S=78.96;//g/g.atom //atomic mass of selenium
Se=a/S
mprintf("\nSe = %e g atom",Se)
Ga=69.72;//g/mol //atomic mass of gallium
As=74.92;//g/mol //atomic mass of arsenic
G=(b-a)/(Ga+As)
mprintf("\nG = %f mol",G)
m=(Se/(G+Se))*100
mprintf("\nm = %e mol percent",m)
