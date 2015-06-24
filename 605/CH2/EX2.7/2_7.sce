//data in question
// input power to the antenna(W)
Ps=2;
//reflection coefficient of transmitting antenna
Yt=0.1
//reflection coefficient of receiving antenna
Yr=0.2
//distance between two antennas
//consider
A=10^(-5)
R=100*(A)
//maximum directivity of receiving antenna(20 dB = 10^(20/10))
Gr=10^(20/10)
//maximum directivity of transmitting antenna(16dB=10^(16/10))
Gt=10^(16/10)
//data print
printf("\nPs=2 W\tYt=0.1\tYr=0.2\tR=100λ\tGr=20 dB\tGt=16 dB\n")
//equations and result
// power transmitted in the forward direction
printf("\nresult:-")
Pt = (1-Yt^2)*Ps
printf("\npower transmitted in the forward direction\n\tPt = (1-Yt^2)*Ps=%.2f W",Pt)
//Friis transmission equation
Pr=Pt*(A/(4*%pi*R))^2*Gr*Gt
printf("\nFriis equation \n\tPr=Pt*(λ/(4*pi*R))^2*Gr*Gt=%fW",Pr)
printf(" =%.0f mW",Pr*1000)
//power delivered to receiver
Pd=(1-Yr^2)*Pr
printf("\npower delivered to receiver\n\tPd=(1-Yr^2)*Pr=%.1f mW",Pd*1000)



